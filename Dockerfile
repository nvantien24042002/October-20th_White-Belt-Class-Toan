FROM nginx:alpine

ENV PORT=10000
ENV NGINX_ENVSUBST_FILTER=^PORT$

COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf.template /etc/nginx/templates/default.conf.template

EXPOSE 10000
