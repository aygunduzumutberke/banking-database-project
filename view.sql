-- =========================================================
-- views.sql
-- Banking Transaction & Account Management System
-- Final database views
-- =========================================================


-- ---------------------------------------------------------
-- 1) Active Accounts View
-- Purpose:
--   Shows active accounts together with customer and branch information.
-- SQL concepts:
--   CREATE VIEW, JOIN, filtering with WHERE
-- ---------------------------------------------------------

DROP VIEW IF EXISTS v_active_accounts;

CREATE VIEW v_active_accounts AS
SELECT
    a.account_id,
    a.account_number,
    a.account_type,
    a.balance AS balance_cents,
    PRINTF('%.2f', a.balance / 100.0) AS balance_try,
    a.currency,
    a.status,
    c.customer_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    b.branch_name,
    b.city AS branch_city
FROM accounts a
JOIN customers c
    ON a.customer_id = c.customer_id
JOIN branches b
    ON a.branch_id = b.branch_id
WHERE a.status = 'active';


-- ---------------------------------------------------------
-- 2) Customer Transaction Summary View
-- Purpose:
--   Summarizes transaction activity for each customer.
-- SQL concepts:
--   CREATE VIEW, JOIN, GROUP BY, aggregate functions
-- ---------------------------------------------------------

DROP VIEW IF EXISTS v_customer_transaction_summary;

CREATE VIEW v_customer_transaction_summary AS
SELECT
    c.customer_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    COUNT(t.transaction_id) AS transaction_count,
    COALESCE(SUM(t.amount), 0) AS total_transaction_cents,
    PRINTF('%.2f', COALESCE(SUM(t.amount), 0) / 100.0) AS total_transaction_try
FROM customers c
LEFT JOIN accounts a
    ON c.customer_id = a.customer_id
LEFT JOIN transactions t
    ON a.account_id = t.account_id
GROUP BY c.customer_id, c.first_name, c.last_name;


-- ---------------------------------------------------------
-- 3) Branch Performance View
-- Purpose:
--   Provides branch-level account and transaction summary.
-- SQL concepts:
--   CREATE VIEW, LEFT JOIN, GROUP BY, COUNT, SUM
-- ---------------------------------------------------------

DROP VIEW IF EXISTS v_branch_performance;

CREATE VIEW v_branch_performance AS
SELECT
    b.branch_id,
    b.branch_name,
    b.city,
    COUNT(DISTINCT a.account_id) AS account_count,
    COUNT(t.transaction_id) AS transaction_count,
    COALESCE(SUM(t.amount), 0) AS total_transaction_cents,
    PRINTF('%.2f', COALESCE(SUM(t.amount), 0) / 100.0) AS total_transaction_try
FROM branches b
LEFT JOIN accounts a
    ON b.branch_id = a.branch_id
LEFT JOIN transactions t
    ON a.account_id = t.account_id
GROUP BY b.branch_id, b.branch_name, b.city;