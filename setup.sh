#!/usr/bin/env bash

FORK='https://github.com/UTSCCSCD01/course-project-404GroupNotFound.git'

[ -d 'scikit-learn' ] || git clone "$FORK" scikit-learn --branch skmain
cd scikit-learn
git remote add upstream https://github.com/scikit-learn/scikit-learn.git

echo 'Putting a hidden devcontainer folder in scikit repo...'
cp -r ../.devcontainer ./
echo '.devcontainer/' >> .git/info/exclude

cat > ./.devcontainer/setup.sh <<EOF
# Run this file **inside the container**
git reset --hard
pip install --no-build-isolation --editable .
pre-commit install
EOF

chmod +x ./.devcontainer/setup.sh

echo '-------------------------------'
echo
if which code > /dev/null; then
    echo 'Opening vscode for you...'
    code .
else
    echo 'Now, open scikit-learn in VSCode.'
fi
echo
echo 'Choose "Reopen in Container" in the popup.'
echo
echo 'Then, run `./.devcontainer/setup.sh` in the container terminal.'
echo
echo '-------------------------------'

