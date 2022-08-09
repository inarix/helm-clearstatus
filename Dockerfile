FROM klakegg/hugo AS hugo
WORKDIR /target
RUN mkdir -p /target/themes
COPY . /target
ADD https://github.com/weeblrpress/clearstatustheme	/target/themes/clearstatustheme/
