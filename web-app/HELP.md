# 이미지 빌드 후 올리는 명령어
docker buildx build \
--platform linux/amd64 \
--no-cache \
-t hyunmok/k3s-spring:latest \
--push \
.
