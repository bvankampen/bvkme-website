#FROM nginxinc/nginx-unprivileged
FROM registry.suse.com/suse/nginx:latest
COPY ./website/build/ /usr/share/nginx/html

RUN mkdir /var/lib/nginx/tmp

RUN chown 1000:1000 /var/log/nginx
RUN chown 1000:1000 -R /var/lib/nginx
