# Use the official NGINX image
FROM nginx:alpine

# Remove any old files
RUN rm -rf /usr/share/nginx/html/*

# Copy new files to NGINX web directory
COPY site /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]
