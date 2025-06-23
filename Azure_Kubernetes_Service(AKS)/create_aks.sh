#!/bin/bash

#This creates a basic AKS cluster with one node and managed identity enabled.
az aks create \
  --resource-group defaultresourcegroup-eus \
  --name myAKSCluster \
  --node-count 1 \
  --enable-managed-identity \
  --generate-ssh-keys
