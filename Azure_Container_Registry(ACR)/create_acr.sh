#!/bin/bash
# This script creates an ACR where your Docker images will be stored.
az acr create \
  --resource-group defaultresourcegroup-eus \
  --name acardogocr \
  --sku Basic \
  --location eastus
