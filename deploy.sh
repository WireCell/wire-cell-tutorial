#!/usr/bin/env sh

# abort on errors
set -e

# build
vuepress build

# navigate into the build output directory
cd .vuepress/dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:WireCell/wire-cell-tutorial.git master:gh-pages

cd -
