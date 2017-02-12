#!/bin/sh
mkdir {www,libs,libs/pedetes}
cd www
git clone https://github.com/xuedi/pedetes-www.git .
cp deploy.sh.in ../deploy.sh
touch cache/cache.serialize.txt
chmod 777 cache/ -R
cp config.json.in config.json
bower install bootstrap less fontawesome
cd ../libs/pedetes
git clone https://github.com/xuedi/pedetes.git .
curl -sS https://getcomposer.org/installer | php
./composer.phar update
cd ../..