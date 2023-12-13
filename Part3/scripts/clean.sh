#!/bin/sh

# Kill the port forward
pkill -f "kubectl port-forward -n dev svc/wil-playground-service 8888:8888"
pkill -f "kubectl port-forward -n argocd svc/argocd-server 8080:443"

# Delete namespaces and cluster
kubectl delete namespace argocd
kubectl delete namespace dev
k3d cluster delete lrandriaC

# Stop and delete docker containers
docker stop $(docker ps -aq)
docker system prune -af --volumes