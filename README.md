# Banking Transaction & Account Management System

## README Documentation

## Project Overview

This project implements a relational banking database system using SQLite.

The main purpose of the project is to support operational tracking and reporting in a banking environment. The system stores and manages information about customers, branches, accounts, transactions, cards, loans, and payments.

The project also includes a simple application interface to demonstrate the database and display query results.

## Problem Statement

Banks generate large amounts of interconnected operational data. Customer accounts, transaction history, branch activity, card records, loan information, and payments must be stored in a consistent and structured way.

Without a relational database design, it becomes difficult to:

- track customer account activity
- monitor transaction flows
- compare branch performance
- identify active or unusual accounts
- generate reliable reports

This project addresses these problems by designing and implementing a relational database that supports SQL-based analysis and reporting.

## Database Tables

The database consists of seven main tables:

| Table | Description |
|---|---|
| customers | Stores customer identity and contact information |
| branches | Stores bank branch information |
| accounts | Stores customer bank accounts |
| transactions | Stores deposits, withdrawals, transfers, and payments |
| cards | Stores debit and credit card records |
| loans | Stores customer loan information |
| payments | Stores bill, loan, and card payment records |

The accounts table is the central table of the system because most financial operations are connected to accounts.

## Dataset

This project uses a synthetic banking dataset created specifically for the designed relational schema.

A public real-world dataset was not used because real banking data may contain sensitive personal and financial information. Also, public datasets may not fully match the table structure and relationships required for this project.

The synthetic dataset provides full control over:

- primary key and foreign key relationships
- transaction types
- account structures
- payment records
- branch assignments
- reporting scenarios

The dataset is inserted through `sql/insert.sql`.

| Table | Number of Records |
|---|---:|
| branches | 8 |
| customers | 30 |
| accounts | 45 |
| transactions | 160 |
| cards | 20 |
| loans | 15 |
| payments | 30 |

The transaction data includes different transaction types such as:

- deposit
- withdrawal
- transfer_in
- transfer_out
- payment

It also includes different transaction channels:

- ATM
- mobile
- web
- branch

Some transactions have completed, pending, or failed statuses. This allows the project to demonstrate operational tracking scenarios.

## Monetary Data Design

All monetary values are stored as integer values representing cents.

For example:

`150.75 TRY → 15075`

This design avoids floating-point precision errors and is more suitable for financial calculations.

Monetary fields include:

- account balance
- transaction amount
- loan principal amount
- payment amount

## SQL Features Used

The project demonstrates the following SQL features:

- CREATE TABLE
- Primary keys and foreign keys
- CHECK, UNIQUE, NOT NULL, and DEFAULT constraints
- INSERT
- Multi-table JOIN
- LEFT JOIN
- GROUP BY
- Aggregate functions such as COUNT and SUM
- HAVING
- Subqueries
- Common Table Expressions, also known as CTEs
- CASE
- Date functions
- Views
- Indexes

## Project Files

```text
banking-database-project/
|
|-- README.md
|-- app.py
|-- requirements.txt
|
|-- sql/
|   |-- schema.sql
|   |-- insert.sql
|   |-- queries.sql
|   |-- views.sql
|   |-- indexes.sql
|
|-- docs/
|   |-- final_report.pdf
|
|-- images/
    |-- erd.png
