#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${SCRIPT_DIR}/../config.ini"

# Initialize database
sqlite3 "${SCRIPT_DIR}/../${DB_FILE}" < "${SCRIPT_DIR}/../sql/schema.sql"
echo "Database initialized: ${DB_FILE}"