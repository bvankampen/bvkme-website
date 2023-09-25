#FROM nginxinc/nginx-unprivileged
FROM registry.suse.com/suse/nginx:latest
COPY ./website/build/ /usr/share/nginx/html

RUN chown -R 1000:1000 /var/log/nginx
RUN chown -R 1000:1000 /var/lib/nginx
