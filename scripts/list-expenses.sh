#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${SCRIPT_DIR}/../config.ini"

echo "📜 Expense List"
echo "---------------"

sqlite3 -column -header "${SCRIPT_DIR}/../${DB_FILE}" <<EOF
SELECT 
  e.id, 
  e.date, 
  printf('%.2f', e.amount) AS amount,
  c.name AS category,
  COALESCE(e.note, '') AS note
FROM expenses e
LEFT JOIN categories c ON e.category_id = c.id
ORDER BY e.date DESC;
EOF