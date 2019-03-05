#!/bin/sh

echo "Deploying kubernetes (with canal)..."
swapoff -a
sudo hostnamectl set-hostname k8smaster
kubeadm init --pod-network-cidr=172.16.0.0/16 # add --apiserver-advertise-address="ip" if you want to use a different IP address than the main server IP
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl apply -f https://docs.projectcalico.org/v3.1/getting-started/kubernetes/installation/hosted/canal/rbac.yaml
kubectl apply -f https://docs.projectcalico.org/v3.1/getting-started/kubernetes/installation/hosted/canal/canal.yaml