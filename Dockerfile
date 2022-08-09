FROM klakegg/hugo:0.101.0-ci AS hugo
WORKDIR /target

ADD https://github.com/weeblrpress/clearstatustheme	/target/themes
COPY . /target
CMD ["hugo", "serve"]
