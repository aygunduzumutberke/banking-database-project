PRAGMA foreign_keys = ON;

-- 1) Customers
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    national_id TEXT UNIQUE NOT NULL,
    phone TEXT UNIQUE,
    email TEXT UNIQUE NOT NULL,
    city TEXT NOT NULL,
    created_at TEXT DEFAULT (datetime('now'))
);

-- 2) Branches
CREATE TABLE branches (
    branch_id INTEGER PRIMARY KEY,
    branch_name TEXT NOT NULL,
    city TEXT NOT NULL,
    address TEXT NOT NULL
);

-- 3) Accounts
CREATE TABLE accounts (
    account_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    branch_id INTEGER NOT NULL,
    account_number TEXT UNIQUE NOT NULL,
    account_type TEXT NOT NULL CHECK (account_type IN ('checking', 'savings')),
    balance INTEGER NOT NULL DEFAULT 0 CHECK (balance >= 0), -- cents
    currency TEXT NOT NULL DEFAULT 'TRY',
    status TEXT NOT NULL DEFAULT 'active' CHECK (status IN ('active', 'closed', 'blocked')),
    opened_at TEXT DEFAULT (datetime('now')),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
);

-- 4) Transactions
CREATE TABLE transactions (
    transaction_id INTEGER PRIMARY KEY,
    account_id INTEGER NOT NULL,
    branch_id INTEGER NOT NULL,
    transaction_type TEXT NOT NULL CHECK (
        transaction_type IN ('deposit', 'withdrawal', 'transfer_in', 'transfer_out', 'payment')
    ),
    amount INTEGER NOT NULL CHECK (amount > 0), -- cents
    transaction_date TEXT DEFAULT (datetime('now')),
    description TEXT,
    related_account_id INTEGER,
    channel TEXT NOT NULL CHECK (channel IN ('ATM', 'mobile', 'web', 'branch')),
    status TEXT NOT NULL DEFAULT 'completed' CHECK (status IN ('completed', 'pending', 'failed')),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id),
    FOREIGN KEY (branch_id) REFERENCES branches(branch_id),
    FOREIGN KEY (related_account_id) REFERENCES accounts(account_id)
);

-- 5) Cards (CVV kaldırıldı)
CREATE TABLE cards (
    card_id INTEGER PRIMARY KEY,
    account_id INTEGER NOT NULL,
    card_number TEXT UNIQUE NOT NULL,
    card_type TEXT NOT NULL CHECK (card_type IN ('debit', 'credit')),
    expiry_date TEXT NOT NULL,
    status TEXT NOT NULL DEFAULT 'active' CHECK (status IN ('active', 'blocked', 'expired')),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

-- 6) Loans
CREATE TABLE loans (
    loan_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    loan_type TEXT NOT NULL CHECK (loan_type IN ('personal', 'mortgage', 'vehicle')),
    principal_amount INTEGER NOT NULL CHECK (principal_amount > 0), -- cents
    interest_rate REAL NOT NULL CHECK (interest_rate >= 0),
    start_date TEXT NOT NULL,
    end_date TEXT NOT NULL,
    status TEXT NOT NULL DEFAULT 'active' CHECK (status IN ('active', 'closed', 'defaulted')),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- 7) Payments
CREATE TABLE payments (
    payment_id INTEGER PRIMARY KEY,
    account_id INTEGER NOT NULL,
    payment_type TEXT NOT NULL CHECK (payment_type IN ('bill', 'loan', 'card')),
    amount INTEGER NOT NULL CHECK (amount > 0), -- cents
    payment_date TEXT DEFAULT (datetime('now')),
    reference_no TEXT UNIQUE NOT NULL,
    status TEXT NOT NULL DEFAULT 'completed' CHECK (status IN ('completed', 'pending', 'failed')),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);