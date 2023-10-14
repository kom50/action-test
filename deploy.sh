#!/usr/bin/env sh

# abort on errors
set -e

# Install packages
npm i

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
echo 'Deploying'

git init
git checkout -b main
git add -A
git commit -m 'deploy' 

git remote -v
git remote add origin https://github.com/kom50/action-test.git
git remote -v
# git push -f origin main:gh-pages
git push origin main:gh-pages

cd -