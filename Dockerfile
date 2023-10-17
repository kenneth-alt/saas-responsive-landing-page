FROM ubuntu
RUN apt update -y
LABEL maintainer=" "
RUN apt install nginx -y
COPY . /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]