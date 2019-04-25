#!/usr/bin/env bash

# Azure Environment

export RESOURCEGROUP_NAME=<my-resourcegroup>
export WEBAPP_NAME=<my-webapp-name>
export WEBAPP_PLAN_NAME=${WEBAPP_NAME}-appservice-plan
export REGION=westus

# Supply these secrets for SQLServer
export SQL_SERVER_NAME=<my petstore-db server name>
export SQL_SERVER_ADMIN_LOGIN_NAME=<admin login>
export SQL_SERVER_ADMIN_PASSWORD=<admin password>
export SQL_DATABASE_NAME=<my petstore-db name>

# Secrets composed from supplied secrets for PostgreSQL
export SQL_SERVER_FULL_NAME=${SQL_SERVER_NAME}.database.windows.net
export SQL_SERVER_ADMIN_FULL_NAME=${SQL_SERVER_ADMIN_LOGIN_NAME}@${SQL_SERVER_NAME}
export SQL_CONNECTION_URL="jdbc:sqlserver://${SQL_SERVER_FULL_NAME}:1433;database=${SQL_DATABASE_NAME};user=${SQL_SERVER_ADMIN_FULL_NAME};password=${SQL_SERVER_ADMIN_PASSWORD};encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;"
# FTP Secrets
# Use Azure CLI to get them
# az webapp deployment list-publishing-profiles -g ${RESOURCEGROUP_NAME} -n ${WEBAPP_NAME}

export FTP_HOST=<my ftp host>
export FTP_USERNAME=<my ftp user name>
export FTP_PASSWORD=<my ftp password>

#IPCONFIG
export DEVBOX_IP_ADDRESS=<my devbox ip>