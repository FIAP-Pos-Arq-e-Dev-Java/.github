#!/bin/bash

# Repository URLs
REPO_LOGIN="https://github.com/FIAP-Pos-Arq-e-Dev-Java/ms-login"
REPO_RESTAURANTE="https://github.com/FIAP-Pos-Arq-e-Dev-Java/ms-restaurante"

if [ ! -d "ms-login" ]; then
    git clone "$REPO_LOGIN"
fi

if [ ! -d "ms-restaurante" ]; then
    git clone "$REPO_RESTAURANTE"
fi

GIST_RAW_URL="https://gist.githubusercontent.com/dpcamargo/ac8e8cc28ae0d5f9b3a7e42787e2db1d/raw/docker-compose.yaml"
curl -fsSL "$GIST_RAW_URL" -o docker-compose.yaml

docker compose up -d
