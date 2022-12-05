FROM klakegg/hugo:alpine-ci AS hugo
WORKDIR /target
RUN mkdir -p /target/themes
RUN apk add git
COPY . /target
RUN git clone https://github.com/inarix/clearstatus /target/themes/clearstatustheme/
ENTRYPOINT [ "hugo", "server" ]
