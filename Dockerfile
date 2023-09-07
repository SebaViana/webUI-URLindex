FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY src/index.html .
COPY json/urls.json ./json/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
