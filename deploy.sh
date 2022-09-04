#!usr/bin/env bash

rm -rf build &&
pnpm run build &&
./coscli cp  -r build cos://blog-1300155796 &&
echo "https://blog-1300155796.cos-website.ap-beijing.myqcloud.com/"