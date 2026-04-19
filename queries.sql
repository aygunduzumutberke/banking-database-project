-- 1) Customer-Based Total Transaction Volume
-- Purpose:
--   Shows the total number and total value of transactions
--   performed by each customer across all of their accounts.
-- SQL topics used:
--   JOIN, GROUP BY, aggregate functions, ORDER BY
-- ---------------------------------------------------------

SELECT
    c.customer_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    COUNT(t.transaction_id) AS transaction_count,
    SUM(t.amount) AS total_transaction_cents,
    PRINTF('%.2f', SUM(t.amount) / 100.0) AS total_transaction_try
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id
GROUP BY c.customer_id, customer_name
ORDER BY total_transaction_cents DESC;


-- ---------------------------------------------------------
-- 2) Branch-Based Account and Transaction Summary
-- Purpose:
--   Compares branches by number of accounts, number of
--   transactions, and total transaction volume.
-- SQL topics used:
--   LEFT JOIN, GROUP BY, COUNT, SUM, ORDER BY
-- ---------------------------------------------------------

SELECT
    b.branch_id,
    b.branch_name,
    COUNT(DISTINCT a.account_id) AS total_accounts,
    COUNT(t.transaction_id) AS total_transactions,
    COALESCE(SUM(t.amount), 0) AS total_volume_cents,
    PRINTF('%.2f', COALESCE(SUM(t.amount), 0) / 100.0) AS total_volume_try
FROM branches b
LEFT JOIN accounts a
    ON b.branch_id = a.branch_id
LEFT JOIN transactions t
    ON b.branch_id = t.branch_id
GROUP BY b.branch_id, b.branch_name
ORDER BY total_volume_cents DESC;


-- ---------------------------------------------------------
-- 3) Accounts With Above-Average Total Transaction Volume
-- Purpose:
--   Finds accounts whose total transaction amount is above
--   the average total transaction amount per account.
-- SQL topics used:
--   JOIN, GROUP BY, HAVING, subquery, ORDER BY
-- ---------------------------------------------------------

SELECT
    a.account_id,
    a.account_number,
    COUNT(t.transaction_id) AS transaction_count,
    SUM(t.amount) AS total_amount_cents,
    PRINTF('%.2f', SUM(t.amount) / 100.0) AS total_amount_try
FROM accounts a
JOIN transactions t
    ON a.account_id = t.account_id
GROUP BY a.account_id, a.account_number
HAVING SUM(t.amount) > (
    SELECT AVG(account_total)
    FROM (
        SELECT SUM(amount) AS account_total
        FROM transactions
        GROUP BY account_id
    ) AS sub
)
ORDER BY total_amount_cents DESC;