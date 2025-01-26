# Use a lightweight base image with a web server
FROM nginx:alpine

# Copy the HTML file(s) to the default Nginx directory
COPY index.html index.css /usr/share/nginx/html/

# Expose port 80 for the container
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]