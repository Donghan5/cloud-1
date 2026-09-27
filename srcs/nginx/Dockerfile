FROM nginx:1.28.0-alpine

RUN apk add --no-cache apache2-utils
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./docker-entrypoint.d/10-create-admin-auth.sh /docker-entrypoint.d/10-create-admin-auth.sh
RUN chmod 0755 /docker-entrypoint.d/10-create-admin-auth.sh

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
