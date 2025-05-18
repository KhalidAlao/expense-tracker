#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${SCRIPT_DIR}/../config.ini"

while true; do
  read -p "Date (YYYY-MM-DD): " date_input
  
  # Basic format validation
  if [[ ! "$date_input" =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]; then
    echo "❌ Invalid format. Use YYYY-MM-DD"
    continue
  fi
  
  # macOS-specific date validation
  if ! date -j -f "%Y-%m-%d" "${date_input}" +"%Y-%m-%d" >/dev/null 2>&1; then
    echo "❌ Invalid date (non-existent date)"
    continue
  fi

  date="$date_input"
  break
done

read -p "Amount: " amount
read -p "Category ID: " category_id
read -p "Note (optional): " note

sqlite3 "${SCRIPT_DIR}/../${DB_FILE}" <<EOF
INSERT INTO expenses (date, amount, category_id, note)
VALUES ('$date', $amount, $category_id, '$note');
EOF

echo "✅ Expense added!"