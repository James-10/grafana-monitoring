set "image_name=nginx-monitoring"

minikube start
minikube image load %image_name%:v1.0.0

@REM kubectl apply -f .\kubernetes\configs\nginx-config.yml
kubectl create configmap nginx-config --from-file=nginx.conf
kubectl create configmap nginx-hosts-config --from-file=hosts

kubectl apply -f .\kubernetes\services\nginx-service.yml
kubectl apply -f .\kubernetes\deployments\nginx-deploy.yml