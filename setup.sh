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

GIST_RAW_URL="https://gist.githubusercontent.com/Ghustavo516/887bd750beb6a79caecf314a503e5ab3/raw/050670da36d1baa591e6e7fe099fb3af1e6cb26c/docker-compose.yaml"
curl -fsSL "$GIST_RAW_URL" -o docker-compose.yaml

docker compose up -d
