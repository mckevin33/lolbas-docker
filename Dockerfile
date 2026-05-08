FROM nginx:alpine
RUN apk add --no-cache wget
ARG SITE_URL=https://lolbas-project.github.io
RUN wget --mirror --convert-links --adjust-extension --page-requisites --no-parent -e robots=off $SITE_URL && \
    dest_dir=$(echo $SITE_URL | sed -e 's~^[^/]*//~~') && \
    rm -rf /usr/share/nginx/html/* && \
    cp -a $dest_dir/. /usr/share/nginx/html/
EXPOSE 80
