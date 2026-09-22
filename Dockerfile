# unprivileged variant already runs as a non-root user and listens on 8080,
# matching OpenShift's default restricted SCC (arbitrary UID, no root)
FROM nginxinc/nginx-unprivileged:1.27-alpine

COPY docker/nginx.conf /etc/nginx/conf.d/default.conf
COPY docs/ /usr/share/nginx/html/

EXPOSE 8080
