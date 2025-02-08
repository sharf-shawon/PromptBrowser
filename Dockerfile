# Use the official Nginx Alpine image as the base
FROM nginx:alpine

# Remove the default Nginx configuration, optionally, if you want your own config
# RUN rm /etc/nginx/conf.d/default.conf

# Copy your static files to the default Nginx web directory
COPY . /usr/share/nginx/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Run Nginx in the foreground (default CMD for nginx:alpine is OK, but we include it for clarity)
CMD ["nginx", "-g", "daemon off;"]
