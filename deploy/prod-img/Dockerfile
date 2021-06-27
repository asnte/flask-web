FROM ubuntu
USER root

# 必要なものをインストール
RUN apt-get update
RUN apt-get -y install software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update
RUN apt-get -y install nginx
RUN apt-get -y install python3.9-dev
RUN apt-get -y install python3-pip
RUN apt-get -y install gcc

# PythonのPATH設定
RUN ln -s /usr/bin/python3.9 /usr/bin/python
RUN rm -rf /usr/bin/python3
RUN ln -s /usr/bin/python3.9 /usr/bin/python3

# flask、uwsgiをインストール
RUN pip3 install --upgrade pip
RUN pip install flask
RUN pip install uwsgi

# 資産をdockerに配備
COPY default.conf /etc/nginx/nginx.conf
COPY backend /var/www/backend
COPY frontend /var/www/frontend
COPY startup /var/www/startup

# 起動
CMD ["/bin/bash", "/var/www/startup/startup.sh"]
