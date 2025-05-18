#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${SCRIPT_DIR}/../config.ini"

echo "📊 Monthly Report"
echo "-----------------"

sqlite3 -column -header "${SCRIPT_DIR}/../${DB_FILE}" <<EOF
SELECT 
  strftime('%Y-%m', date) AS month,
  printf('%.2f', SUM(amount)) AS total
FROM expenses
GROUP BY month
ORDER BY month DESC;
EOF