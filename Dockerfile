FROM nginx:alpine

COPY src/index.html /usr/share/nginx/html/
COPY json/urls.json /usr/share/nginx/html/json/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
