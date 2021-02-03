#!/bin/bash

# Modify this variable to point to your own fork
FORK=https://github.com/junzhengca/scikit-learn.git

mkdir _work
cd _work
git clone "$FORK"
cd scikit-learn
git remote add upstream https://github.com/scikit-learn/scikit-learn.git
pip install --no-build-isolation --editable .
pre-commit install