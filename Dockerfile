FROM nginxinc/nginx-unprivileged
COPY ./website/build/ /usr/share/nginx/html