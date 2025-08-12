富山IOT大屏设计平台


location /prod-api/ {
    proxy_pass http://localhost:9712/;
    proxy_set_header Host $host;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
}