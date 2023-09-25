#FROM nginxinc/nginx-unprivileged
FROM registry.suse.com/suse/nginx:latest
COPY ./website/build/ /usr/share/nginx/html
