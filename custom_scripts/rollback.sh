#!/bin/bash
set -e

echo "Running Liquibase ROLLBACK (last change)..."

liquibase \
  --defaults-file=config/liquibase.properties \
  rollback-count 1
