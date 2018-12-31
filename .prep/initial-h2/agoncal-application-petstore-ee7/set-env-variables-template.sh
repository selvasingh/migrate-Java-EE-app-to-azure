#!/usr/bin/env bash

# WildFly Info

export WILDFLY_HOME=<my path to WildFly on local machine>

# Azure Environment

export RESOURCEGROUP_NAME=<my-resourcegroup>
export WEBAPP_NAME=<my-webapp-name>
export WEBAPP_PLAN_NAME=${WEBAPP_NAME}-appservice-plan
export REGION=westus