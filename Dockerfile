FROM nginx:1.27-alpine3.19

RUN apk update \
    && apk add openssl
    
RUN mkdir /etc/nginx/ssl

CMD ["nginx", "-g", "daemon off;"]