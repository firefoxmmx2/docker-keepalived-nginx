# 这是个构建nginx + keepalived的镜像构建文件
FROM nginx:stable-alpine
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk update && apk upgrade && apk add --no-cache keepalived curl ipvsadm iproute2
RUN apk add bash
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
