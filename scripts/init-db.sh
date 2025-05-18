#!/usr/bin/env bash
set -euo pipefail
source ../config.ini
createdb -U "$DB_USER" "$DB_NAME"
psql -U "$DB_USER" -d "$DB_NAME" -f ../sql/schema.sql