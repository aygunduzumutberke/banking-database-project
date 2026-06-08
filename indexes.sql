-- =========================================================
-- indexes.sql
-- Banking Transaction & Account Management System
-- Final performance indexes
-- =========================================================


-- ---------------------------------------------------------
-- 1) Index on accounts.customer_id
-- Purpose:
--   Speeds up queries joining customers with accounts.
-- ---------------------------------------------------------

CREATE INDEX IF NOT EXISTS idx_accounts_customer_id
ON accounts(customer_id);


-- ---------------------------------------------------------
-- 2) Index on accounts.branch_id
-- Purpose:
--   Speeds up branch-based account summaries.
-- ---------------------------------------------------------

CREATE INDEX IF NOT EXISTS idx_accounts_branch_id
ON accounts(branch_id);


-- ---------------------------------------------------------
-- 3) Index on transactions.account_id
-- Purpose:
--   Speeds up account-based transaction analysis.
-- ---------------------------------------------------------

CREATE INDEX IF NOT EXISTS idx_transactions_account_id
ON transactions(account_id);


-- ---------------------------------------------------------
-- 4) Index on transactions.branch_id
-- Purpose:
--   Speeds up branch-based transaction reports.
-- ---------------------------------------------------------

CREATE INDEX IF NOT EXISTS idx_transactions_branch_id
ON transactions(branch_id);


-- ---------------------------------------------------------
-- 5) Index on transactions.transaction_date
-- Purpose:
--   Speeds up date-based transaction reports.
-- ---------------------------------------------------------

CREATE INDEX IF NOT EXISTS idx_transactions_date
ON transactions(transaction_date);


-- ---------------------------------------------------------
-- 6) Index on payments.account_id
-- Purpose:
--   Speeds up account-payment relationship queries.
-- ---------------------------------------------------------

CREATE INDEX IF NOT EXISTS idx_payments_account_id
ON payments(account_id);


-- ---------------------------------------------------------
-- 7) Index on loans.customer_id
-- Purpose:
--   Speeds up customer-loan relationship queries.
-- ---------------------------------------------------------

CREATE INDEX IF NOT EXISTS idx_loans_customer_id
ON loans(customer_id);