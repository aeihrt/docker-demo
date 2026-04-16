# setup ur image base
FROM nginx:alpine

# copy index
# COPY index.html /usr/share/nginx/html/index.html

COPY index.html /usr/share/nginx/html/
COPY css /usr/share/nginx/html/css
COPY scripts /usr/share/nginx/html/scripts

# EXPOSE 80
