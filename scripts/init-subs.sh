#!/usr/bin/env bash

#scripts/init-subs.sh

# by David Skinner
# on November 8, 2018
# for Huny-B CBD-Oil Ltd Co

# Copyright (c) 2018 Davsk. All Rights Reserved.

windows() { [[ -n "$WINDIR" ]]; }
## link all themes to web themes
#cd web
#rm -rf themes
#git clone --depth 1 --recursive https://github.com/gohugoio/hugoThemes.git themes
#cd ../website
cd website
## declare an array variable
declare -a arr=(
    "Huny-B.com"
    "Huny-B.net"
    "Huny-B.org"
    "Huny-B.info"
    "Huny-B.online"
    "Huny-B.store"
    "JustLegalHemp.com"
    "JustLegalHemp.net"
    "JustLegalHemp.info"
    "SativaDelight.com"
    "SativaDelight.net"
    "SativaDelight.org"
    "SativaDelight.info"
    "Huny-B.CBD-Oil.App"
    )

## now loop through the above array
for i in "${arr[@]}"
do
    cd $i
        echo $i
#        rm -rf themes
       rm -rf public
#        git add -A
#        git commit -m $i
		
#        if windows; then
#           cmd <<< "mklink /D themes \..\..\web\themes" > /dev/null
#        else
#           ln -s ../../web/themes
#        fi
		
		if windows; then
           mkdir public
		   git add -A
		   git commit -m pub$i
		   rm -rf public
		   git submodule add -b master git@github.com:Huny-B-CBD-Oil/$i.git public 
        else
         git submodule add -b master git@github.com:Huny-B-CBD-Oil/$i.git public 
        fi
		
    cd ..
done

git add -A
git commit -m "Clear"
git submodule init
git pull --recurse-submodules
