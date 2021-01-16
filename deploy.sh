cd springio-api
mvn clean package -DskipTests=true 
docker build -t springio-api .
docker tag springio-api re102162189/springio-api:1.0.0
docker push re102162189/springio-api:1.0.0 

cd ..
kubectl create namespace springio

kubectl apply -f base
kubectl apply -f mysql  
kubectl apply -f springio-api/k8s-app
kubectl port-forward -n springio svc/springio-api 8080:8080