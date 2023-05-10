#!/bin/bash
# 部署到 github pages 脚本
# 错误时终止脚本
set -e
echo -e "\033[0;32mDeploying updates to GitHub and Gitlab...\033[0m"

export BLOG_BASE="/home/seven/Memo" # 设成你的 hugo 根目录

# 建立新的 pubilc
cd $BLOG_BASE

# Add changes to git.
git add .

# Commit changes.
msg="building site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# 推送到github
git push -u origin main

# 完成
echo "Success"
