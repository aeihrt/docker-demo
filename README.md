# Hello World Docker App

A simple static web page served with Nginx in Docker.

## Project Structure

- index.html
- css/style.css
- scripts/script.js
- Dockerfile

## Build Image

Run this in the project folder:

docker build -t myappimagev2 .

## Run Container

docker run -d -p 8080:80 --name myappcon myappimagev2

Then open:

http://localhost:8080

## Stop and Remove Container

docker stop myappcon
docker rm myappcon

## Important Note

Current Dockerfile only copies index.html, so css/style.css and scripts/script.js are not included in the container yet.

Use this Dockerfile content so styles and JavaScript are served too:

FROM nginx:alpine
COPY index.html /usr/share/nginx/html/
COPY css /usr/share/nginx/html/css
COPY scripts /usr/share/nginx/html/scripts
