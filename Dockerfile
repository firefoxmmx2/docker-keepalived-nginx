# 这是个构建nginx + keepalived的镜像构建文件
FROM nginx:stable-alpine
RUN apk update && apk upgrade && apk add --no-cache keepalived curl ipvsadm iproute2
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
