#!/bin/bash
set -e

echo "Running Liquibase VALIDATE..."

liquibase \
  --defaults-file=config/liquibase.properties \
  validate
