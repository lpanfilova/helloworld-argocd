#!/bin/bash

# Set ACR details
ACR_LOGIN_SERVER="lpanfilovaregistry.azurecr.io"
ACR_USERNAME="lpanfilovaregistry"
ACR_PASSWORD="lw7itaQ4oI9UNqjltFFnIJJ1d8zO0OMZX9HdLlI+27+ACRBZ7wk1"

# Build and tag Docker image
docker build -t $ACR_LOGIN_SERVER/my-app:latest .

# Authenticate to the ACR
docker login $ACR_LOGIN_SERVER -u $ACR_USERNAME -p $ACR_PASSWORD

# Push the Docker image to ACR
docker push $ACR_LOGIN_SERVER/helloworld-argocd:latest