#!/bin/bash

# アプリケーションディレクトリに移動
cd /var/www/backend

# uwsgi起動
# TODO: rootで動かさない方が良いですよ。というWarningが出るので、ちゃんと uid 等を指定した方が良い
uwsgi --socket 127.0.0.1:3031 --chdir /var/www/backend/ --wsgi-file main.py --callable app --master --processes 4 --threads 2 & 

# nginx起動
nginx -g "daemon off;"
