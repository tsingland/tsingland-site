#!/bin/bash


# git config
function genSite() {
    hugo --theme=hyde --baseUrl=https://tsingland.github.io/
}


function gitConfig() {
    git config --global user.email "1184550842@qq.com"
    git config --global user.name "sunlin"
}

# commit tsingland
function commitSite() {

    cd public
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
