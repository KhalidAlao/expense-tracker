#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${SCRIPT_DIR}/../config.ini"

BACKUP_DIR="${SCRIPT_DIR}/../backups"
mkdir -p "${BACKUP_DIR}"
BACKUP_FILE="${BACKUP_DIR}/backup-$(date +%F_%H-%M-%S).db"

cp "${SCRIPT_DIR}/../${DB_FILE}" "${BACKUP_FILE}"
echo "✅ Backup created: ${BACKUP_FILE}"