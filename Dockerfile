FROM nginx:alpine
RUN echo "<h1>PAC Hello from Pipeline as Code!</h1>" > /usr/share/nginx/html/index.html
RUN chmod -R 777 /var/cache/nginx /var/run /var/log/nginx /etc/nginx/conf.d
RUN sed -i 's/listen  *80;/listen 8080;/g' /etc/nginx/conf.d/default.conf
EXPOSE 8080