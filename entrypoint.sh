#!/usr/bin/env bash
chmod -R 777 /wwwroot/onemanager-php
if [ ! -f "/wwwroot/onemanager-php/.data/config.php" ]; then
    echo "<?php \$configs = '{}';" >  /wwwroot/onemanager-php/.data/config.php
fi
php-fpm7 -R -F