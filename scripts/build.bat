set "image_name=nginx-monitoring"

docker build -t %image_name%:v1.0.0 .

docker-compose up -d