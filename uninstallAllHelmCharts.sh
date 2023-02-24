#!/usr/bin/sh

kubectl config set-context minikube --namespace=irs
helm uninstall irs-frontend
helm uninstall irs-dependencies
helm uninstall irs
helm uninstall edc-consumer
helm uninstall edc-provider
helm uninstall edc-daps
helm uninstall edc-vault

helm list