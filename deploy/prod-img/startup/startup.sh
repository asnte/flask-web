#!/bin/bash

# アプリケーションディレクトリに移動
cd /var/www/backend

# ユーザーの追加
useradd flask-user

# uwsgi起動
# 後ろの $ + 半角スペース は必須（理由は不明だが無い場合はバックエンド側が正常に立ち上がらない）
uwsgi --ini uwsgi.ini & 

# nginx起動
nginx -g "daemon off;"
