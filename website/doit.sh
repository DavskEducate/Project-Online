#!/usr/bin/env bash

#website/doit.sh

# by David Skinner
# on November 4, 2018
# for Huny-B CBD-Oil Ltd Co

# Copyright (c) 2018 Davsk. All Rights Reserved.

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
    echo "$i.git"

    # create New Site
    if [ ! -d ./$i ]; then
        hugo new site $i
        cd $i
        echo $i >CNAME
        rm -rf themes
        ln -s ../../web/themes
        git submodule add -b master git@github.com:Huny-B-CBD-Oil/$i.git public
        echo -e 'baseURL = '"https://$i/"'\nlanguageCode = "en-us"\ntitle = '$i >config.toml
        cd ..
    fi

    cd $i
    # do something.
    cd ..
done

#git submodule init
#git pull --recurse-submodules