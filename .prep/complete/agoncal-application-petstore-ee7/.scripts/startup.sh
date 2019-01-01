#!/usr/bin/env bash
/opt/jboss/wildfly/bin/jboss-cli.sh -c --file=/home/site/deployments/tools/postgresql-datasource-commands.cli
/opt/jboss/wildfly/bin/jboss-cli.sh -c --file=/home/site/deployments/tools/mysql-datasource-commands.cli