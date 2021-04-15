# ft_service

here is the ft-services project 42 neetwork 13337
for excute 
sh setup.sh

for get all service and deployment
kubectl get all

for check the liviness
kubectl exec deploy/mysql -- pkill mysqld


copy file from kubernetes
kubectl cp grafana-d4f77759-tqfxt:/grafana-7.4.1/data/grafana.db grafana.db
