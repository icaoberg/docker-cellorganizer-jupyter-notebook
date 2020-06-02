#!/bin/bash

git submodule init
git submodule update
cd cellorganizer-python
git checkout master
cd ..
docker build --no-cache -t icaoberg/cellorganizer-jupyter:latest .
#docker tag icaoberg/cellorganizer-jupyter:latest icaoberg/cellorganizer-jupyter:v2.9.0
