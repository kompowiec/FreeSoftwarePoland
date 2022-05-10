#!/bin/bash

git submodule init
git submodule update

hugo
cd public/
git add -A
git checkout master
data=`date +"%d/%m/%Y %R"`
git commit -a -m "site update: $data"
git push origin master
cd ..
git add -A
git commit -a -m "www update: $data"
git push origin master

name=`whoami`
echo "Zmodyfikowałeś repozytorium WWW i PAGES"
sleep 1
echo "Nice day $name"

#Copyright 2022 Piotr Jozwik
#
#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.

#You should have received a copy of the GNU General Public License
#along with this program.  If not, see http://www.gnu.org/licenses/
