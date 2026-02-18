#!/bin/bash
# Nginx 설정 테스트 (오타가 있으면 배포 중단)
nginx -t

if [ $? -eq 0 ]; then
    # Nginx가 실행 중인지 확인 후 상황에 맞게 실행
    systemctl restart nginx
    echo "Nginx restarted successfully."
else
    echo "Nginx configuration test failed."
    exit 1
fi