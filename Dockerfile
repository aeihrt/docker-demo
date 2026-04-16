# setup ur image base
FROM nginx:alpine

# copy index
# COPY index.html /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html/

# EXPOSE 80
