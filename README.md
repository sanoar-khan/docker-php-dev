# docker-container-php
Docker Container for PHP Development Environment

### Components
- PHP v7.0-fpm
    - pdo_mysql
    - composer
    - xdebug
- MySQL v5.7
- NGiNX 
- PHPMyAdmin

### Setup
- Copy/rename `.env.example` into `.env`, and update if required
```
# APP Configs
APP_PORT=8090
APP_DIR=../code

# MySQL Configs
MYSQL_HOST=mysql
MYSQL_PORT=3306
MYSQL_DATABASE=docker_php_dev
MYSQL_USERNAME=docker_php_dev
MYSQL_PASSWORD=secret

# PHPMyAdmin Configs
PMA_PORT=9090
```
- Build and start container: `$ bash start-container.sh`
- Stop container: `$ bash stop-container.sh`
- Bash into container: `$ bash bash-container.sh`
