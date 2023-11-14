# #!/usr/bin/env sh

# set -x
# docker run -d -p 80:80 --name my-apache-php-app -v selenium_test\src:/var/www/html php:7.2-apache
# sleep 1
# set +x

# echo 'Now...'
# echo 'Visit http://localhost to see your PHP application in action.'

#!/usr/bin/env sh

set -x

# Set correct permissions
chmod -R 755 /var/jenkins_home/workspace/selenium/selenium_test/src

# Set correct ownership
chown -R www-data:www-data /var/jenkins_home/workspace/selenium/selenium_test/src

# Run Docker container
docker run -d -p 80:80 --name my-apache-php-app -v "$(pwd)/selenium_test/src:/var/www/html" php:7.2-apache

# Allow some time for the container to start
sleep 1

set +x

echo 'Now...'
echo 'Visit http://localhost to see your PHP application in action.'
