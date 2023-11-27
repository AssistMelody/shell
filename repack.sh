#!/bin/zsh

current=$PWD
echo "******* build library *****"
cd "../module-library"
npm run package
cd $current
echo "******* install library *****"

npm i "../module-library/dist/module-library/module-library-0.0.1.tgz"
npm i

echo "*******删除.angular 缓存*****"
rm -rf .angular/

echo "******* relanch *******"
npm run start