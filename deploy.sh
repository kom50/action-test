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

git config --global user.email "omprakashkartik82280@gmail.com"
git config --global user.name "kom50"
        
git init
git checkout -b main
git add -A
git commit -m 'deploy' 

git remote -v
# git remote add origin https://kom50:$GITHUB_TOKEN@github/kom50/action-test.git
git remote set-url origin https://kom50:$GITHUB_TOKEN@github.com/kom50/action-test.git
git remote -v
# git push -f origin main:gh-pages
git push origin main:gh-pages -f -u $GITHUB_TOKEN

cd -