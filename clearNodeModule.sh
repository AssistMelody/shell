#!/bin/zsh

current=$(pwd);

for file in $(ls ./)
do
    path="${current}/${file}"
    if [ -d "${path}" ]
    then
        cd "${path}"
        rm -rf node_modules
        rm -rf .angular/
        echo "*******删除node_modules*****"
    fi
done
