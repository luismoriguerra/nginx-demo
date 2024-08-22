# Use the official Nginx image as a base
FROM nginx:latest

# Copy the custom Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Run Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]