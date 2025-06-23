#!/bin/bash
#This script connects an existing Azure Kubernetes Service (AKS) cluster to an Azure Container Registry (ACR) so that the AKS cluster can pull images from the ACR
az aks update \
  --name myAKSCluster \
  --resource-group myResourceGroup \
  --attach-acr myContainerRegistry
