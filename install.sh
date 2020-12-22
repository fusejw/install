kubectl cluster-info | grep master

printf "Installing jabberwocky application to that kubernetes cluster\n\n"

kubectl apply -f ./deploy/jbw-server-roles.yaml
kubectl apply -f ./deploy/jbw-server-deployment.yaml
kubectl apply -f ./deploy/jbw-server-service.yaml
kubectl apply -f ./deploy/jbw-ui-deployment.yaml
kubectl apply -f ./deploy/jbw-ui-service.yaml

printf "\nInstallation complete. You can now browse your application located at:\n\n"
kubectl get svc | grep jabberwocky-ui
printf "\nIf you're on minikube, you can run \"minikube service jabberwocky-ui\"\n"
