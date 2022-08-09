FROM klakegg/hugo:alpine-ci AS hugo
WORKDIR /target
RUN mkdir -p /target/themes
RUN apk add git
COPY . /target
RUN git clone https://github.com/weeblrpress/clearstatustheme	/target/themes/clearstatustheme/
ENTRYPOINT [ "hugo", "server" ]
