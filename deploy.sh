#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd blog/.vuepress/dist

git init
git add -A
git commit -m 'deploy'

# 发布到 https://sirenar.github.io
git push -f git@github.com:sirenar/sirenar.github.io.git master:gh-pages

cd -