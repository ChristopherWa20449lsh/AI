#!/bin/bash
# find . -type f -size +100M | while read -r file
# do
#     # Add them to .gitignore
#     echo "$file" >> .gitignore
# done

# 注意-print必须显式指定
find . -path ./.git -prune -o -type f -size +50M -print | sed -e 's/\.\///g' -e 's/ /\\ /g' > .gitignore

echo ".DS_Store" >> .gitignore