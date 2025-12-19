FROM nginx:alpine

# Copy your static files into Nginx web root
COPY . /usr/share/nginx/html

# Cloud Run expects the container to listen on 8080
EXPOSE 8080

# Update Nginx to listen on 8080 instead of 80
RUN sed -i 's/listen\s\+80;/listen 8080;/' /etc/nginx/conf.d/default.conf
