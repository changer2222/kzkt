#!/bin/sh
wget --no-check-certificate https://alicache.bdschool.cn/public/bdschool/index/static/ali/w.html -O 1.html.gz
gzip -d 1.html.gz 
cat ./1.html |grep 'https://alicache.bdschool.cn/public/bdschool/index/static/file/'| sed 's/^.*addr://g'| sort | uniq | xargs -n1 wget --no-check-certificate 
