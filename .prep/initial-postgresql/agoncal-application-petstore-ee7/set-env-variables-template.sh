#!/usr/bin/env bash

# Azure Environment

export RESOURCEGROUP_NAME=<my-resourcegroup>
export WEBAPP_NAME=<my-webapp-name>
export WEBAPP_PLAN_NAME=${WEBAPP_NAME}-appservice-plan
export REGION=westus

# Supply these secrets for PostgreSQL
export POSTGRES_SERVER_NAME=<my petstore-db name>
export POSTGRES_SERVER_ADMIN_LOGIN_NAME=<my postgres admin login name>
export POSTGRES_SERVER_ADMIN_PASSWORD=<my admin password>
export POSTGRES_DATABASE_NAME=<my postgres database name>

# Secrets composed from supplied secrets for PostgreSQL
export POSTGRES_SERVER_FULL_NAME=${POSTGRES_SERVER_NAME}.postgres.database.azure.com
export POSTGRES_CONNECTION_URL=jdbc:postgresql://${POSTGRES_SERVER_FULL_NAME}:5432/${POSTGRES_DATABASE_NAME}?ssl=true
export POSTGRES_SERVER_ADMIN_FULL_NAME=${POSTGRES_SERVER_ADMIN_LOGIN_NAME}@${POSTGRES_SERVER_NAME}

# FTP Secrets
# Use Azure CLI to get them
# az webapp deployment list-publishing-profiles -g ${RESOURCEGROUP_NAME} -n ${WEBAPP_NAME}

export FTP_HOST=<my ftp host>
export FTP_USERNAME=<my ftp user name>
export FTP_PASSWORD=<my ftp password>

#IPCONFIG
export DEVBOX_IP_ADDRESS=<my devbox ip>

