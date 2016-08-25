FROM scratch
MAINTAINER Jianying Li <lijianying12@gmail.com>

ADD ./rootfs.tar / 
RUN mkdir -p /app
WORKDIR /app
COPY ./static /app/
RUN git clone git@github.com:xcc3641/hexo_blog.git /blog
EXPOSE 8080

CMD ["/app/static"]
