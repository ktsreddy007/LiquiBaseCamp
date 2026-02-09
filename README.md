# Liquibase DB Automation POC

## Overview

This repository contains a **Proof of Concept (POC)** for automating database schema changes using **Liquibase**.  
The goal is to demonstrate a structured, repeatable, and auditable approach to database migrations across environments.

This POC focuses on **database change control, versioning, and automation**, aligning with modern DevOps and CI/CD practices.

---

## Objectives

- Automate database schema changes using Liquibase
- Maintain version-controlled database migrations
- Ensure consistency across multiple environments
- Enable rollback and traceability of database changes
- Validate Liquibase integration with build and deployment pipelines
- Perform Migrations & Rollbacks aswell.
---

## Tech Stack

- **Liquibase**
- **XML** (changeSets)
- **Git** (version control)
- **Azure CI/CD-ready structure**
- Database: *(Configurable — e.g., PostgreSQL / MySQL / Oracle)*

---

## Repository Structure

```text

│   ├── custom_scripts/
│   │   ├──rollback.sh
│   │   ├──update.sh
│   │   ├──validate.sh
│   ├── DML/
│   │   ├── changelog/
│   │   │   ├── master.xml
│   │   │   └── release-v1.2
│   │   │   └── release-v2.2
│   │   ├── migrations
│   │   │   └──Functions/
│   │   │      └──sample1.SQL
│   │   │   └──Stored Procedures/
│   │   │      └──sample1.SQL
│   │   │   └──Tables/
│   │   │      └──sample1.SQL
│   │   │   └──Views/
│   │   │      └──sample1.SQL
│   │   │   └──Postconditions/
│   │   │   └──Preconditions/
│   │   ├── rollback
│   │   │   └──Functions/
│   │   │      └──R_sample1.SQL
│   │   │   └──Stored Procedures/
│   │   │      └──R_sample1.SQL
│   │   │   └──Tables/
│   │   │      └──R_sample1.SQL
│   │   │   └──Views/
│   │   │      └──R_sample1.SQL
│   │   │   └──Postconditions/
│   │   │   └──Preconditions/
│   ├── DDL/
│   │   ├── changelog/
│   │   │   ├── master.xml
│   │   │   └── release-v1.2
│   │   │   └── release-v2.2
│   │   ├── migrations
│   │   │   └──Functions/
│   │   │      └──sample1.SQL
│   │   │   └──Stored Procedures/
│   │   │      └──sample1.SQL
│   │   │   └──Tables/
│   │   │      └──sample1.SQL
│   │   │   └──Views/
│   │   │      └──sample1.SQL
│   │   │   └──Postconditions/
│   │   │   └──Preconditions/
│   │   ├── rollback
│   │   │   └──Functions/
│   │   │      └──R_sample1.SQL
│   │   │   └──Stored Procedures/
│   │   │      └──R_sample1.SQL
│   │   │   └──Tables/
│   │   │      └──R_sample1.SQL
│   │   │   └──Views/
│   │   │      └──R_sample1.SQL
│   │   │   └──Postconditions/
│   │   │   └──Preconditions/
├── config/
│   ├── liquibase.properties
├── azure-pipelines.yml
├── README.md