# Pulling an image I built from NGINX Official page on Docker Hub
FROM jabaribrown01/d3v0ps:1
# Changes the current working directory within the container to root, this is where the code will be executed
WORKDIR .
# Takes the HTML file in my current directory and copies the file over to a common location where web content is served from within the Nginx web server
COPY index.html /usr/share/nginx/html/
