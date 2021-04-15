#!/bin/sh

echo -e "\033[0;32m Configuration minikube is setup \033[0m"
minikube config set memory 5072
minikube config set disk-size 20GB
minikube config set  driver virtualbox

echo -e "\033[0;32m  minikube is started \033[0m"
kubectl delete deployment --all
kubectl delete services --all
minikube delete
export MINIKUBE_HOME=/goinfre/nbjaghou/
minikube start

echo -e "\033[0;32m  minikube Ui Dashboard \033[0m"
 minikube dashboard &

echo -e "\033[0;32m  connect to docker  \033[0m"
eval $(minikube docker-env)

echo -e "\033[0;32m  add mettlab to minikube \033[0m"
minikube addons enable metallb

echo -e "\033[0;32m  start metallb \033[0m"
kubectl apply -f ./srcs/metallb.yaml

echo -e "\033[0;32m  start nginx \033[0m"
docker build -t service_nginx ./srcs/nginx
kubectl apply -f ./srcs/nginx.yaml

echo -e "\033[0;32m  start mysql \033[0m"
docker build -t service_mysql ./srcs/mysql
kubectl apply -f ./srcs/mysql.yaml

echo -e "\033[0;32m  start phpmyadmin \033[0m"
docker build -t phpmyadmin ./srcs/phpmyadmin
kubectl apply -f ./srcs/phpmyadmin.yaml

echo -e "\033[0;32m  start wordpress \033[0m"
docker build -t wordpress ./srcs/wordpress
kubectl apply -f ./srcs/wordpress.yaml

echo -e "\033[0;32m  start ftps \033[0m"
docker build -t ftps ./srcs/ftps
kubectl apply -f ./srcs/ftps.yaml

echo -e "\033[0;32m  start influxdb \033[0m"
docker build -t influxdb ./srcs/influxdb
kubectl apply -f ./srcs/influxdb.yaml

echo -e "\033[0;32m  start grafana \033[0m"
docker build -t grafana ./srcs/grafana
kubectl apply -f ./srcs/grafana.yaml