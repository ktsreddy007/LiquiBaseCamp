#!/bin/bash
set -e

echo "Running Liquibase UPDATE..."

liquibase \
  --defaults-file=config/liquibase.properties \
  update
