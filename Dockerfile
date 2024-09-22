# Use the official NGINX image from Docker Hub
FROM nginx:alpine

# Copy the contents of the 'site' folder to the default NGINX web directory
COPY site /usr/share/nginx/html

# Expose port 80 to allow traffic
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]
