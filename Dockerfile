FROM nginx:alpine

LABEL org.opencontainers.image.source="https://github.com/AgileAndDevOpsToolkit/mots-meles-icebreakler"

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
