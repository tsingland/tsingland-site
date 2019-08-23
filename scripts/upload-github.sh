#!/bin/bash


# git config
function genSite() {
    if [ -d blog ]
        then
        rm blog/*
    fi
    hugo -d blog
}

function pushGithub() {

    cd blog
    git add -A

    git commit -m "upload github by hand"
    git push -f https://github.com/tsingland/tsingland.github.io.git master:master

}

function main() {

    genSite
    pushGithub
}


main
