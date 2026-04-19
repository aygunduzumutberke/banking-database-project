PRAGMA foreign_keys = ON;

-- =====================================================
-- 1) BRANCHES (8)
-- =====================================================
INSERT INTO branches (branch_id, branch_name, city, address) VALUES
(1, 'Istanbul Merkez', 'Istanbul', 'Kadikoy, Istanbul'),
(2, 'Besiktas Subesi', 'Istanbul', 'Besiktas, Istanbul'),
(3, 'Ankara Merkez', 'Ankara', 'Cankaya, Ankara'),
(4, 'Izmir Merkez', 'Izmir', 'Konak, Izmir'),
(5, 'Bursa Subesi', 'Bursa', 'Nilufer, Bursa'),
(6, 'Antalya Subesi', 'Antalya', 'Muratpasa, Antalya'),
(7, 'Trabzon Subesi', 'Trabzon', 'Ortahisar, Trabzon'),
(8, 'Eskisehir Subesi', 'Eskisehir', 'Tepebasi, Eskisehir');

-- =====================================================
-- 2) CUSTOMERS (30)
-- =====================================================
INSERT INTO customers (customer_id, first_name, last_name, national_id, phone, email, city) VALUES
(1, 'Ali', 'Yilmaz', '10000000001', '5550000001', 'ali1@mail.com', 'Istanbul'),
(2, 'Ayse', 'Demir', '10000000002', '5550000002', 'ayse2@mail.com', 'Ankara'),
(3, 'Mehmet', 'Kaya', '10000000003', '5550000003', 'mehmet3@mail.com', 'Izmir'),
(4, 'Fatma', 'Celik', '10000000004', '5550000004', 'fatma4@mail.com', 'Bursa'),
(5, 'Ahmet', 'Sahin', '10000000005', '5550000005', 'ahmet5@mail.com', 'Antalya'),
(6, 'Zeynep', 'Yildiz', '10000000006', '5550000006', 'zeynep6@mail.com', 'Istanbul'),
(7, 'Mustafa', 'Aydin', '10000000007', '5550000007', 'mustafa7@mail.com', 'Ankara'),
(8, 'Emine', 'Arslan', '10000000008', '5550000008', 'emine8@mail.com', 'Izmir'),
(9, 'Huseyin', 'Dogan', '10000000009', '5550000009', 'huseyin9@mail.com', 'Bursa'),
(10, 'Elif', 'Kurt', '10000000010', '5550000010', 'elif10@mail.com', 'Antalya'),
(11, 'Hasan', 'Ozdemir', '10000000011', '5550000011', 'hasan11@mail.com', 'Trabzon'),
(12, 'Hatice', 'Kilic', '10000000012', '5550000012', 'hatice12@mail.com', 'Eskisehir'),
(13, 'Ibrahim', 'Aslan', '10000000013', '5550000013', 'ibrahim13@mail.com', 'Istanbul'),
(14, 'Merve', 'Tas', '10000000014', '5550000014', 'merve14@mail.com', 'Ankara'),
(15, 'Burak', 'Aksoy', '10000000015', '5550000015', 'burak15@mail.com', 'Izmir'),
(16, 'Seda', 'Yavuz', '10000000016', '5550000016', 'seda16@mail.com', 'Bursa'),
(17, 'Kerem', 'Can', '10000000017', '5550000017', 'kerem17@mail.com', 'Antalya'),
(18, 'Gizem', 'Bulut', '10000000018', '5550000018', 'gizem18@mail.com', 'Trabzon'),
(19, 'Onur', 'Eren', '10000000019', '5550000019', 'onur19@mail.com', 'Eskisehir'),
(20, 'Ceren', 'Kaplan', '10000000020', '5550000020', 'ceren20@mail.com', 'Istanbul'),
(21, 'Omer', 'Koc', '10000000021', '5550000021', 'omer21@mail.com', 'Ankara'),
(22, 'Derya', 'Acar', '10000000022', '5550000022', 'derya22@mail.com', 'Izmir'),
(23, 'Tolga', 'Gunes', '10000000023', '5550000023', 'tolga23@mail.com', 'Bursa'),
(24, 'Pelin', 'Kara', '10000000024', '5550000024', 'pelin24@mail.com', 'Antalya'),
(25, 'Serkan', 'Bozkurt', '10000000025', '5550000025', 'serkan25@mail.com', 'Trabzon'),
(26, 'Buse', 'Altun', '10000000026', '5550000026', 'buse26@mail.com', 'Eskisehir'),
(27, 'Yusuf', 'Tekin', '10000000027', '5550000027', 'yusuf27@mail.com', 'Istanbul'),
(28, 'Ece', 'Akin', '10000000028', '5550000028', 'ece28@mail.com', 'Ankara'),
(29, 'Deniz', 'Polat', '10000000029', '5550000029', 'deniz29@mail.com', 'Izmir'),
(30, 'Sinem', 'Ucar', '10000000030', '5550000030', 'sinem30@mail.com', 'Bursa');

-- =====================================================
-- 3) ACCOUNTS (45)
-- =====================================================
INSERT INTO accounts (account_id, customer_id, branch_id, account_number, account_type, balance, currency, status, opened_at) VALUES
(1, 1, 1, 'TR000001', 'checking', 250000, 'TRY', 'active', '2024-01-10 10:00:00'),
(2, 2, 2, 'TR000002', 'savings', 340000, 'TRY', 'active', '2024-01-12 10:00:00'),
(3, 3, 3, 'TR000003', 'checking', 180000, 'TRY', 'active', '2024-01-15 10:00:00'),
(4, 4, 4, 'TR000004', 'savings', 420000, 'TRY', 'active', '2024-01-18 10:00:00'),
(5, 5, 5, 'TR000005', 'checking', 130000, 'TRY', 'active', '2024-01-20 10:00:00'),
(6, 6, 6, 'TR000006', 'savings', 510000, 'TRY', 'active', '2024-01-25 10:00:00'),
(7, 7, 7, 'TR000007', 'checking', 275000, 'TRY', 'active', '2024-02-01 10:00:00'),
(8, 8, 8, 'TR000008', 'savings', 365000, 'TRY', 'active', '2024-02-03 10:00:00'),
(9, 9, 1, 'TR000009', 'checking', 195000, 'TRY', 'active', '2024-02-05 10:00:00'),
(10, 10, 2, 'TR000010', 'savings', 610000, 'TRY', 'active', '2024-02-07 10:00:00'),
(11, 11, 3, 'TR000011', 'checking', 220000, 'TRY', 'active', '2024-02-10 10:00:00'),
(12, 12, 4, 'TR000012', 'savings', 470000, 'TRY', 'active', '2024-02-13 10:00:00'),
(13, 13, 5, 'TR000013', 'checking', 155000, 'TRY', 'active', '2024-02-15 10:00:00'),
(14, 14, 6, 'TR000014', 'savings', 395000, 'TRY', 'active', '2024-02-18 10:00:00'),
(15, 15, 7, 'TR000015', 'checking', 285000, 'TRY', 'active', '2024-02-20 10:00:00'),
(16, 16, 8, 'TR000016', 'savings', 540000, 'TRY', 'active', '2024-02-22 10:00:00'),
(17, 17, 1, 'TR000017', 'checking', 165000, 'TRY', 'active', '2024-03-01 10:00:00'),
(18, 18, 2, 'TR000018', 'savings', 315000, 'TRY', 'active', '2024-03-03 10:00:00'),
(19, 19, 3, 'TR000019', 'checking', 205000, 'TRY', 'active', '2024-03-05 10:00:00'),
(20, 20, 4, 'TR000020', 'savings', 455000, 'TRY', 'active', '2024-03-08 10:00:00'),
(21, 21, 5, 'TR000021', 'checking', 260000, 'TRY', 'active', '2024-03-10 10:00:00'),
(22, 22, 6, 'TR000022', 'savings', 385000, 'TRY', 'active', '2024-03-12 10:00:00'),
(23, 23, 7, 'TR000023', 'checking', 145000, 'TRY', 'active', '2024-03-14 10:00:00'),
(24, 24, 8, 'TR000024', 'savings', 620000, 'TRY', 'active', '2024-03-16 10:00:00'),
(25, 25, 1, 'TR000025', 'checking', 235000, 'TRY', 'active', '2024-03-18 10:00:00'),
(26, 26, 2, 'TR000026', 'savings', 360000, 'TRY', 'active', '2024-03-20 10:00:00'),
(27, 27, 3, 'TR000027', 'checking', 175000, 'TRY', 'active', '2024-03-22 10:00:00'),
(28, 28, 4, 'TR000028', 'savings', 505000, 'TRY', 'active', '2024-03-24 10:00:00'),
(29, 29, 5, 'TR000029', 'checking', 215000, 'TRY', 'active', '2024-03-26 10:00:00'),
(30, 30, 6, 'TR000030', 'savings', 445000, 'TRY', 'active', '2024-03-28 10:00:00'),
(31, 1, 7, 'TR000031', 'savings', 125000, 'TRY', 'active', '2024-04-01 10:00:00'),
(32, 2, 8, 'TR000032', 'checking', 295000, 'TRY', 'active', '2024-04-03 10:00:00'),
(33, 3, 1, 'TR000033', 'savings', 375000, 'TRY', 'active', '2024-04-05 10:00:00'),
(34, 4, 2, 'TR000034', 'checking', 185000, 'TRY', 'active', '2024-04-07 10:00:00'),
(35, 5, 3, 'TR000035', 'savings', 565000, 'TRY', 'active', '2024-04-09 10:00:00'),
(36, 6, 4, 'TR000036', 'checking', 245000, 'TRY', 'active', '2024-04-11 10:00:00'),
(37, 7, 5, 'TR000037', 'savings', 335000, 'TRY', 'active', '2024-04-13 10:00:00'),
(38, 8, 6, 'TR000038', 'checking', 155000, 'TRY', 'active', '2024-04-15 10:00:00'),
(39, 9, 7, 'TR000039', 'savings', 485000, 'TRY', 'active', '2024-04-17 10:00:00'),
(40, 10, 8, 'TR000040', 'checking', 225000, 'TRY', 'active', '2024-04-19 10:00:00'),
(41, 11, 1, 'TR000041', 'savings', 345000, 'TRY', 'active', '2024-04-21 10:00:00'),
(42, 12, 2, 'TR000042', 'checking', 165000, 'TRY', 'active', '2024-04-23 10:00:00'),
(43, 13, 3, 'TR000043', 'savings', 525000, 'TRY', 'active', '2024-04-25 10:00:00'),
(44, 14, 4, 'TR000044', 'checking', 255000, 'TRY', 'active', '2024-04-27 10:00:00'),
(45, 15, 5, 'TR000045', 'savings', 395000, 'TRY', 'active', '2024-04-29 10:00:00');

-- =====================================================
-- 4) TRANSACTIONS (160)
-- =====================================================
WITH RECURSIVE cnt(x) AS (
  SELECT 1
  UNION ALL
  SELECT x + 1 FROM cnt WHERE x < 160
)
INSERT INTO transactions (
  transaction_id,
  account_id,
  branch_id,
  transaction_type,
  amount,
  transaction_date,
  description,
  related_account_id,
  channel,
  status
)
SELECT
  x,
  ((x - 1) % 45) + 1,
  ((x - 1) % 8) + 1,
  CASE
    WHEN x % 5 = 0 THEN 'deposit'
    WHEN x % 5 = 1 THEN 'withdrawal'
    WHEN x % 5 = 2 THEN 'payment'
    WHEN x % 5 = 3 THEN 'transfer_in'
    ELSE 'transfer_out'
  END,
  1000 + (x * 125),
  datetime('2025-01-01', '+' || x || ' hours'),
  'Transaction #' || x,
  CASE
    WHEN x % 5 IN (3,4) THEN (((x + 7) % 45) + 1)
    ELSE NULL
  END,
  CASE
    WHEN x % 4 = 0 THEN 'ATM'
    WHEN x % 4 = 1 THEN 'mobile'
    WHEN x % 4 = 2 THEN 'web'
    ELSE 'branch'
  END,
  CASE
    WHEN x % 17 = 0 THEN 'pending'
    WHEN x % 23 = 0 THEN 'failed'
    ELSE 'completed'
  END
FROM cnt;

-- =====================================================
-- 5) CARDS (20)
-- =====================================================
INSERT INTO cards (card_id, account_id, card_number, card_type, expiry_date, status) VALUES
(1, 1,  '4000000000000001', 'debit',  '2028-12-31', 'active'),
(2, 2,  '4000000000000002', 'credit', '2028-11-30', 'active'),
(3, 3,  '4000000000000003', 'debit',  '2028-10-31', 'active'),
(4, 4,  '4000000000000004', 'credit', '2028-09-30', 'active'),
(5, 5,  '4000000000000005', 'debit',  '2028-08-31', 'blocked'),
(6, 6,  '4000000000000006', 'credit', '2028-07-31', 'active'),
(7, 7,  '4000000000000007', 'debit',  '2028-06-30', 'active'),
(8, 8,  '4000000000000008', 'credit', '2028-05-31', 'expired'),
(9, 9,  '4000000000000009', 'debit',  '2028-04-30', 'active'),
(10, 10, '4000000000000010', 'credit', '2028-03-31', 'active'),
(11, 11, '4000000000000011', 'debit',  '2028-02-29', 'active'),
(12, 12, '4000000000000012', 'credit', '2028-01-31', 'active'),
(13, 13, '4000000000000013', 'debit',  '2029-12-31', 'active'),
(14, 14, '4000000000000014', 'credit', '2029-11-30', 'blocked'),
(15, 15, '4000000000000015', 'debit',  '2029-10-31', 'active'),
(16, 16, '4000000000000016', 'credit', '2029-09-30', 'active'),
(17, 17, '4000000000000017', 'debit',  '2029-08-31', 'active'),
(18, 18, '4000000000000018', 'credit', '2029-07-31', 'active'),
(19, 19, '4000000000000019', 'debit',  '2029-06-30', 'active'),
(20, 20, '4000000000000020', 'credit', '2029-05-31', 'active');

-- =====================================================
-- 6) LOANS (15)
-- =====================================================
INSERT INTO loans (loan_id, customer_id, loan_type, principal_amount, interest_rate, start_date, end_date, status) VALUES
(1, 1,  'personal',  5000000, 1.59, '2024-01-01', '2027-01-01', 'active'),
(2, 3,  'mortgage', 25000000, 2.10, '2023-06-01', '2033-06-01', 'active'),
(3, 5,  'vehicle',   8000000, 1.85, '2024-03-15', '2029-03-15', 'active'),
(4, 7,  'personal',  4200000, 1.70, '2024-02-10', '2027-02-10', 'active'),
(5, 9,  'mortgage', 30000000, 2.25, '2022-09-01', '2032-09-01', 'active'),
(6, 11, 'vehicle',   9500000, 1.95, '2024-05-20', '2029-05-20', 'active'),
(7, 13, 'personal',  6000000, 1.65, '2024-04-01', '2027-04-01', 'closed'),
(8, 15, 'mortgage', 28000000, 2.05, '2023-01-01', '2033-01-01', 'active'),
(9, 17, 'vehicle',  12000000, 1.90, '2024-06-01', '2029-06-01', 'active'),
(10, 19,'personal',  3500000, 1.55, '2024-07-01', '2027-07-01', 'defaulted'),
(11, 21,'mortgage', 22000000, 2.00, '2023-03-01', '2033-03-01', 'active'),
(12, 23,'vehicle',   7000000, 1.88, '2024-08-01', '2029-08-01', 'active'),
(13, 25,'personal',  4800000, 1.60, '2024-09-01', '2027-09-01', 'active'),
(14, 27,'mortgage', 26000000, 2.15, '2022-11-01', '2032-11-01', 'active'),
(15, 29,'vehicle',   8800000, 1.92, '2024-10-01', '2029-10-01', 'active');

-- =====================================================
-- 7) PAYMENTS (30)
-- =====================================================
INSERT INTO payments (payment_id, account_id, payment_type, amount, payment_date, reference_no, status) VALUES
(1, 1,  'bill',  12000, '2025-01-05 09:00:00', 'REF0001', 'completed'),
(2, 2,  'loan',  35000, '2025-01-06 10:00:00', 'REF0002', 'completed'),
(3, 3,  'card',  18000, '2025-01-07 11:00:00', 'REF0003', 'pending'),
(4, 4,  'bill',  14000, '2025-01-08 12:00:00', 'REF0004', 'completed'),
(5, 5,  'loan',  42000, '2025-01-09 13:00:00', 'REF0005', 'failed'),
(6, 6,  'card',  21000, '2025-01-10 14:00:00', 'REF0006', 'completed'),
(7, 7,  'bill',  16000, '2025-01-11 15:00:00', 'REF0007', 'completed'),
(8, 8,  'loan',  39000, '2025-01-12 16:00:00', 'REF0008', 'pending'),
(9, 9,  'card',  17000, '2025-01-13 17:00:00', 'REF0009', 'completed'),
(10, 10, 'bill',  15000, '2025-01-14 18:00:00', 'REF0010', 'completed'),
(11, 11, 'loan',  36000, '2025-01-15 09:00:00', 'REF0011', 'completed'),
(12, 12, 'card',  22000, '2025-01-16 10:00:00', 'REF0012', 'failed'),
(13, 13, 'bill',  13000, '2025-01-17 11:00:00', 'REF0013', 'completed'),
(14, 14, 'loan',  41000, '2025-01-18 12:00:00', 'REF0014', 'completed'),
(15, 15, 'card',  19000, '2025-01-19 13:00:00', 'REF0015', 'pending'),
(16, 16, 'bill',  14500, '2025-01-20 14:00:00', 'REF0016', 'completed'),
(17, 17, 'loan',  37000, '2025-01-21 15:00:00', 'REF0017', 'completed'),
(18, 18, 'card',  20500, '2025-01-22 16:00:00', 'REF0018', 'completed'),
(19, 19, 'bill',  13500, '2025-01-23 17:00:00', 'REF0019', 'failed'),
(20, 20, 'loan',  43000, '2025-01-24 18:00:00', 'REF0020', 'completed'),
(21, 21, 'card',  19500, '2025-01-25 09:00:00', 'REF0021', 'completed'),
(22, 22, 'bill',  15500, '2025-01-26 10:00:00', 'REF0022', 'pending'),
(23, 23, 'loan',  38500, '2025-01-27 11:00:00', 'REF0023', 'completed'),
(24, 24, 'card',  23000, '2025-01-28 12:00:00', 'REF0024', 'completed'),
(25, 25, 'bill',  12500, '2025-01-29 13:00:00', 'REF0025', 'completed'),
(26, 26, 'loan',  40000, '2025-01-30 14:00:00', 'REF0026', 'failed'),
(27, 27, 'card',  21500, '2025-01-31 15:00:00', 'REF0027', 'completed'),
(28, 28, 'bill',  16500, '2025-02-01 16:00:00', 'REF0028', 'completed'),
(29, 29, 'loan',  37500, '2025-02-02 17:00:00', 'REF0029', 'pending'),
(30, 30, 'card',  24000, '2025-02-03 18:00:00', 'REF0030', 'completed')