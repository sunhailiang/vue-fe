FROM nginx
LABEL name="vue-fe"
LABEL version="1.0"
COPY ./dist  /usr/share/nginx/html
COPY ./vue-fe.conf /etc/nginx/conf.d
EXPOSE 80