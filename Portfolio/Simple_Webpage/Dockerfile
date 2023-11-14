#This uses the latest image of NGINX
FROM nginx:latest
#The working directory for where the container will run the commands, this directory usually host the html for NGINX Web Servers
WORKDIR /usr/share/nginx/html/
COPY index.html index.html
#This creates a css folder in the usr/share/nginx/html/ directory and copies my local css file to that new folder
RUN  mkdir css
COPY ./css/styles.css css/styles.css
