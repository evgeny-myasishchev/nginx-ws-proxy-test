FROM nginx:1.13

# 
# docker build . -t nginx-ws-proxy
# docker run --rm -it  -v ${PWD}/conf.d:/etc/nginx/conf.d nginx-ws-proxy
#

RUN apt-get update && apt-get install vim -y

COPY nginx.conf /etc/nginx/

VOLUME ["/etc/nginx/config.d"]
