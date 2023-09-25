#FROM nginxinc/nginx-unprivileged
FROM registry.suse.com/suse/nginx:latest
COPY ./website/build/ /usr/share/nginx/html

RUN chmod -R 744 1000:1000 /var/log/nginx
RUN chmod -R 744 1000:1000 /var/lib/nginx/tmp
