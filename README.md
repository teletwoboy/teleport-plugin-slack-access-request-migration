# teleport-plugin-slack-access-request-migration

## 📌 Overview
This repository manages database migration scripts for the **Teleport Slack Access Request Plugin**.  
It is separated from the main application to manage schema changes in a GitOps-friendly and modular way.

## 📂 Structure
- `*.up.sql` — Migration scripts to apply database schema changes  
- `*.down.sql` — Rollback scripts to revert applied schema changes  
- `.github/workflows` — GitHub Actions workflows for automated migration image builds

### 1. Prerequisites
- PostgreSQL or compatible database
- Database connection credentials
- Migration tool (e.g., `golang-migrate`, `dbmate`, etc.)

### 2. Apply Migration
```bash
migrate -path=. -database="postgres://${DB_USER}:${DB_PASS}@${DB_HOST}:${DB_PORT}/${DB_NAME}?sslmode=disable" up
```

### 3. Rollback
```bash
migrate -path=. -database="postgres://${DB_USER}:${DB_PASS}@${DB_HOST}:${DB_PORT}/${DB_NAME}?sslmode=disable" down
```

### 4. License

This project is licensed under the [Apache License 2.0](LICENSE)