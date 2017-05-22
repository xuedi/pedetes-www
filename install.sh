#!/bin/sh
mkdir {www,libs,libs/pedetes}
cd www
git clone git@github.com:xuedi/pedetes-www.git .
cp deploy.sh.in ../deploy.sh
chmod +x ../deploy.sh
touch cache/cache.serialize.txt
chmod 777 cache/ -R
cp config.json.in config.json
bower install
cd ../libs/pedetes
git clone git@github.com:xuedi/pedetes.git .
curl -sS https://getcomposer.org/installer | php
./composer.phar update
cd ../..