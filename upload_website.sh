#!/bin/bash

cd public/

git submodule init
git submodule update

cd ..
hugo
cd public/
git add -A
git checkout master
data=`date`
git commit -a -m "site update: $data"
git push origin master
cd ..
git add public
git commit -a -m "www update: $data"
git push origin master
