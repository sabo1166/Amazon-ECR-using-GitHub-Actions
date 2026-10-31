# Use official lightweight Nginx image
FROM nginx:alpine

# Add image metadata
LABEL project="docker-ecr-cicd"
LABEL application="nginx-web"

# Copy application into Nginx web root
COPY app/index.html /usr/share/nginx/html/index.html

# Expose HTTP port
EXPOSE 80

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
