FROM klakegg/hugo:0.101.0-ci AS hugo
WORKDIR /target

ADD https://github.com/weeblrpress/clearstatustheme	/target/themes/clearstatustheme
COPY . /target
CMD ["hugo", "serve"]

FROM nginx
COPY --from=hugo /target /usr/share/nginx/html