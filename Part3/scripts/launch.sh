#!/bin/sh

# Create k3d cluster
k3d cluster create lrandriaC

# Install argocd
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
sleep 10
kubectl wait --for=condition=ready pod --all --timeout=300s -n argocd

# Connect argocd
kubectl port-forward -n argocd svc/argocd-server 8080:443 > /dev/null 2>&1 &
argo_pass=$(kubectl -n argocd get secret argocd-initial-admin-secret -o=jsonpath="{.data.password}" | base64 --decode)
argocd login 127.0.0.1:8080 --username=admin --password="$argo_pass" --insecure

# Create app
kubectl create namespace dev
argocd app create wil-playground --repo https://github.com/adrianvarnier/lrandria-iot.git --path wil-playground --dest-server https://kubernetes.default.svc --dest-namespace dev
argocd app sync wil-playground
sleep 10
kubectl wait --for=condition=ready pod --all --timeout=300s -n dev
argocd app set wil-playground --sync-policy automated
sleep 5
argocd app set wil-playground --auto-prune
sleep 5
argocd app set wil-playground --self-heal
sleep 5
kubectl port-forward -n dev svc/wil-playground-service 8888:8888 > /dev/null 2>&1 &