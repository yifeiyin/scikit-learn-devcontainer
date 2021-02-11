#!/bin/bash

if [ -z "$1" ]; then
    echo 'Usage: ./setup.sh <fork>'
    exit 1
fi

# Modify this variable to point to your own fork
FORK="https://github.com/$1/scikit-learn.git"

[ -d 'scikit-learn' ] || git clone "$FORK" scikit-learn
cd scikit-learn
git remote add upstream https://github.com/scikit-learn/scikit-learn.git

echo 'Putting a hidden devcontainer folder in scikit repo...'
cp -r ../.devcontainer ./
echo '.devcontainer/' >> .git/info/exclude

cat > ./.devcontainer/setup.sh <<EOF
# Run this file **inside the container**
pip install --no-build-isolation --editable .
pre-commit install
EOF

chmod +x ./.devcontainer/setup.sh

echo 'Now, open scikit-learn in vscode remote container.'
echo 'Then, run `./.devcontainer/setup.sh` in the terminal.'

if which code > /dev/null; then
    echo 'Opening vscode for you...'
    code .
fi
