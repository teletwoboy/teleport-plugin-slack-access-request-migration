<div align=center>

# teleport-plugin-slack-access-request-migration

[![License](https://img.shields.io/badge/License-Apache%202.0-%234b5563.svg?style=flat-square)](https://www.apache.org/licenses/LICENSE-2.0)
[![MADE BY](https://img.shields.io/badge/made%20by-teletwoboy-informational?style=flat-square)](https://github.com/teletwoboy)
![Version](https://img.shields.io/badge/golang--migrate-v4.17.0-success?style=flat-square)

</div>

<br>

## Overview
This repository manages database migration scripts for [teleport-plugin-slack-access-request](https://github.com/teletwoboy/teleport-plugin-slack-access-request). <br>
It is separated from the main application to manage schema changes in a GitOps-friendly and modular way.

<br>

## How to use

#### 1. Prerequisites
- PostgreSQL or compatible database
- Database connection credentials
- Migration tool (e.g., `golang-migrate`, `dbmate`, etc.)

<br>

#### 2. Apply Migration
```bash
migrate -path=. -database="postgres://${DB_USER}:${DB_PASS}@${DB_HOST}:${DB_PORT}/${DB_NAME}?sslmode=disable" up
```

<br>

#### 3. Rollback
```bash
migrate -path=. -database="postgres://${DB_USER}:${DB_PASS}@${DB_HOST}:${DB_PORT}/${DB_NAME}?sslmode=disable" down
```

<br>

## Structure
```
├── .github
│   └── workflows
│       └── ci-cd-tag.yml              # CI/CD workflow triggered by Git tags to build and publish migration images
├── 000001_seed_init.down.sql          # Migration rollback script to remove initial seed data and schema
├── 000001_seed_init.up.sql            # Migration script to initialize the database with seed data and schema
├── 000002_slack_users.down.sql        # Rollback script to drop or revert the Slack users table changes
├── 000002_slack_users.up.sql          # Migration script to create or modify the Slack users table
├── 000003_teleport_users.down.sql     # Rollback script to drop or revert the Teleport users table changes
├── 000003_teleport_users.up.sql       # Migration script to create or modify the Teleport users table
├── 000004_users.down.sql              # Rollback script to drop or revert the general users table changes
├── 000004_users.up.sql                # Migration script to create or modify the general users table
├── 000005_access_requests.down.sql    # Rollback script to drop or revert the access requests table changes
├── 000005_access_requests.up.sql      # Migration script to create or modify the access requests table
├── 000006_access_reviews.down.sql     # Rollback script to drop or revert the access reviews table changes
├── 000006_access_reviews.up.sql       # Migration script to create or modify the access reviews table
├── 000007_access_policies.down.sql    # Rollback script to drop or revert the access policies table changes
├── 000007_access_policies.up.sql      # Migration script to create or modify the access policies table
```

<br>

## License

This project is licensed under the [Apache License 2.0](LICENSE)
