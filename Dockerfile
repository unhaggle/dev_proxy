FROM nginx:1.18

COPY proxy.conf.template /etc/nginx/templates/proxy.conf.template
COPY 30-htpasswd.sh /docker-entrypoint.d/30-htpasswd.sh
RUN chmod +x /docker-entrypoint.d/30-htpasswd.sh
