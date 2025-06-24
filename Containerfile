# RHEL UBI9 ベースの nginx イメージを使用
FROM registry.access.redhat.com/ubi9/nginx-120

# Webコンテンツの配置
COPY index.html /opt/app-root/src/index.html

# nginx が提供するデフォルトのポートを公開
EXPOSE 8080

# nginx を起動
CMD ["nginx", "-g", "daemon off;"]

