# CLI Expense Tracker 

[![Bash](https://img.shields.io/badge/Language-Bash-%234EAA25?logo=gnu-bash)](https://www.gnu.org/software/bash/)
[![SQLite](https://img.shields.io/badge/Database-SQLite-%23003B57?logo=sqlite)](https://sqlite.org)
[![License](https://img.shields.io/badge/License-MIT-blue)](LICENSE)

A lightweight, **terminal-first expense tracking system** designed for developers who value simplicity and data ownership.

## 🚀 Features
- Full CRUD operations via intuitive CLI
- SQLite-powered relational data integrity
- Automated backups with timestamped snapshots
- Comprehensive input validation (dates/amounts)
- Cross-platform support (macOS/Linux/WSL)

## 🛠 Tech Stack
- **Core Language**: Bash 5.0+
- **Database**: SQLite 3.37+
- **Version Control**: Git
- **Automation**: cron jobs for backups

## 📦 Installation
```bash
git clone https://github.com/YOURUSERNAME/expense-tracker.git
cd expense-tracker
chmod +x scripts/*.sh
./scripts/init-db.sh

💻 Usage Examples

# Add expense
./scripts/add-expense.sh

# Generate monthly report
./scripts/report.sh

# Create backup
./scripts/backup-db.sh
