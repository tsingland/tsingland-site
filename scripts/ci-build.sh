#!/bin/bash


# git config
function genSite() {
    if [ -d blog ]
        then
        rm blog/*
    fi
    hugo -d blog  --theme=hyde --baseUrl=https://tsingland.github.io/
}


function gitConfig() {
    git config --global user.email "1184550842@qq.com"
    git config --global user.name "sunlin"
}

# commit tsingland
function commitSite() {

    cd blog
    git init
    git add .
    git commit -m "Update by travis"

    git push -f "https://${GH_TOKEN}@${GH_REF}" master:master
}

function main() {
    genSite
    gitConfig
    commitSite
}

main
