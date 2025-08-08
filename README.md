<div align=center>

# teleport-plugin-slack-access-request-migration

[![License](https://img.shields.io/badge/License-Apache%202.0-%234b5563.svg?style=flat-square)](https://www.apache.org/licenses/LICENSE-2.0)
[![MADE BY](https://img.shields.io/badge/made%20by-teletwoboy-informational?style=flat-square)](https://github.com/teletwoboy)
![Version](https://img.shields.io/badge/Version-0.1.0-success?style=flat-square)

</div>

<br>

## 📌 Overview
This repository manages database migration scripts for [teleport-plugin-slack-access-request](https://github.com/teletwoboy/teleport-plugin-slack-access-request). <br>
It is separated from the main application to manage schema changes in a GitOps-friendly and modular way.

<br>

## 📂 Structure
- `*.up.sql` — Migration scripts to apply database schema changes  
- `*.down.sql` — Rollback scripts to revert applied schema changes  
- `.github/workflows` — GitHub Actions workflow triggered by `Annotated Tag` for automated migration image builds

<br>

### 1. Prerequisites
- PostgreSQL or compatible database
- Database connection credentials
- Migration tool (e.g., `golang-migrate`, `dbmate`, etc.)

<br>

### 2. Apply Migration
```bash
migrate -path=. -database="postgres://${DB_USER}:${DB_PASS}@${DB_HOST}:${DB_PORT}/${DB_NAME}?sslmode=disable" up
```

<br>

### 3. Rollback
```bash
migrate -path=. -database="postgres://${DB_USER}:${DB_PASS}@${DB_HOST}:${DB_PORT}/${DB_NAME}?sslmode=disable" down
```

<br>

### 4. License

This project is licensed under the [Apache License 2.0](LICENSE)