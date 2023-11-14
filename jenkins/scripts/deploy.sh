#!/usr/bin/env sh

set -x
docker run -d -p 80:80 --name my-apache-php-app -v selenium_test\src:/var/www/html php:7.2-apache
chmod -R 755 selenium_test/src
sleep 1
set +x

echo 'Now...'
echo 'Visit http://localhost to see your PHP application in action.'

