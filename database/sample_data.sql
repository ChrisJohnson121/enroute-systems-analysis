-- EnRoute sample data
-- Run after database/schema.sql. All people, emails, phone numbers (555-01xx),
-- license numbers, VINs, card digits and tokens are fictional test values.
-- Password_Hash values are placeholders, not real bcrypt hashes.

USE enroute;

INSERT INTO Customer (Cust_ID, Cust_FName, Cust_LName, Cust_Email, Phone_Num, Password_Hash) VALUES
  (1, 'Maya', 'Patel', 'maya.patel@example.com', '704-555-0101', '$2b$12$samplehashcustomer01placeholderxxxxxxxxxxxxxxxxxxxxxx'),
  (2, 'Jordan', 'Reed', 'jordan.reed@example.com', '704-555-0102', '$2b$12$samplehashcustomer02placeholderxxxxxxxxxxxxxxxxxxxxxx'),
  (3, 'Aisha', 'Thompson', 'aisha.thompson@example.com', '704-555-0103', '$2b$12$samplehashcustomer03placeholderxxxxxxxxxxxxxxxxxxxxxx'),
  (4, 'Luis', 'Moreno', 'luis.moreno@example.com', '704-555-0104', '$2b$12$samplehashcustomer04placeholderxxxxxxxxxxxxxxxxxxxxxx'),
  (5, 'Hannah', 'Kim', 'hannah.kim@example.com', '704-555-0105', '$2b$12$samplehashcustomer05placeholderxxxxxxxxxxxxxxxxxxxxxx'),
  (6, 'Tyler', 'Brooks', 'tyler.brooks@example.com', '980-555-0106', '$2b$12$samplehashcustomer06placeholderxxxxxxxxxxxxxxxxxxxxxx'),
  (7, 'Grace', 'Nguyen', 'grace.nguyen@example.com', '980-555-0107', '$2b$12$samplehashcustomer07placeholderxxxxxxxxxxxxxxxxxxxxxx'),
  (8, 'Marcus', 'Bell', 'marcus.bell@example.com', '980-555-0108', '$2b$12$samplehashcustomer08placeholderxxxxxxxxxxxxxxxxxxxxxx'),
  (9, 'Sofia', 'Alvarez', 'sofia.alvarez@example.com', '704-555-0109', '$2b$12$samplehashcustomer09placeholderxxxxxxxxxxxxxxxxxxxxxx'),
  (10, 'Ethan', 'Carter', 'ethan.carter@example.com', '704-555-0110', '$2b$12$samplehashcustomer10placeholderxxxxxxxxxxxxxxxxxxxxxx');

INSERT INTO Employee (Emp_Id, Emp_FName, Emp_LName, Emp_Email, Phone_Num, Password_Hash, License_Number) VALUES
  (1, 'Darnell', 'Washington', 'darnell.washington@enroute.example', '704-555-0201', '$2b$12$samplehashemployee01placeholderxxxxxxxxxxxxxxxxxxxxxx', 'NC-D1048823'),
  (2, 'Priya', 'Raman', 'priya.raman@enroute.example', '704-555-0202', '$2b$12$samplehashemployee02placeholderxxxxxxxxxxxxxxxxxxxxxx', 'NC-D2057714'),
  (3, 'Kevin', 'O''Brien', 'kevin.obrien@enroute.example', '980-555-0203', '$2b$12$samplehashemployee03placeholderxxxxxxxxxxxxxxxxxxxxxx', 'NC-D3069105'),
  (4, 'Angela', 'Ortiz', 'angela.ortiz@enroute.example', '980-555-0204', '$2b$12$samplehashemployee04placeholderxxxxxxxxxxxxxxxxxxxxxx', 'NC-D4071236'),
  (5, 'Samuel', 'Greene', 'samuel.greene@enroute.example', '704-555-0205', '$2b$12$samplehashemployee05placeholderxxxxxxxxxxxxxxxxxxxxxx', 'NC-D5083347'),
  (6, 'Rachel', 'Lin', 'rachel.lin@enroute.example', '704-555-0206', '$2b$12$samplehashemployee06placeholderxxxxxxxxxxxxxxxxxxxxxx', 'NC-D6095458');

INSERT INTO Vehicle (Vin_Number, Emp_Id, Make, Model, License_Plate) VALUES
  ('1HGCV1F30NA102345', 1, 'Honda', 'Accord', 'NC-JKR4821'),
  ('3N1AB8CV5PY607890', 1, 'Nissan', 'Sentra', 'NC-PLM2290'),
  ('4T1G11AK5PU203456', 2, 'Toyota', 'Camry', 'NC-HTV7315'),
  ('5YJ3E1EA7PF304567', 3, 'Tesla', 'Model 3', 'NC-EVX1004'),
  ('1FMCU9G62NUA40567', 4, 'Ford', 'Escape', 'NC-RWD5583'),
  ('KM8J33A40PU506789', 5, 'Hyundai', 'Tucson', 'NC-BNK6642'),
  ('2T3P1RFV8PW708901', 6, 'Toyota', 'RAV4', 'NC-CLT9178');

INSERT INTO Payment_Method (Payment_Method_ID, Cust_ID, Card_Type, Last_Four_Digits, Payment_Token) VALUES
  (1, 1, 'Visa', '4242', 'tok_test_001_cust01'),
  (2, 1, 'Mastercard', '5100', 'tok_test_002_cust01'),
  (3, 2, 'Visa', '1881', 'tok_test_003_cust02'),
  (4, 3, 'American Express', '0005', 'tok_test_004_cust03'),
  (5, 4, 'Discover', '1117', 'tok_test_005_cust04'),
  (6, 5, 'Visa', '0077', 'tok_test_006_cust05'),
  (7, 5, 'Mastercard', '4444', 'tok_test_007_cust05'),
  (8, 6, 'Mastercard', '8210', 'tok_test_008_cust06'),
  (9, 7, 'Visa', '3056', 'tok_test_009_cust07'),
  (10, 8, 'Discover', '9424', 'tok_test_010_cust08'),
  (11, 9, 'Visa', '6011', 'tok_test_011_cust09'),
  (12, 9, 'American Express', '8431', 'tok_test_012_cust09');

INSERT INTO Ride (Ride_ID, Cust_ID, Emp_Id, Vin_Number, Fare, Pick_Up_Location, Drop_Off_Location, Ride_Status, Requested_At, Completed_At) VALUES
  (1, 1, 1, '1HGCV1F30NA102345', 18.75, 'UNC Charlotte Student Union, 9201 University City Blvd', 'NoDa Brewing Company, 2921 N Tryon St', 'Completed', '2026-10-02 08:15:00', '2026-10-02 08:37:00'),
  (2, 2, 2, '4T1G11AK5PU203456', 42.10, 'Charlotte Douglas International Airport, 5501 Josh Birmingham Pkwy', 'UNC Charlotte Student Union, 9201 University City Blvd', 'Completed', '2026-10-03 17:40:00', '2026-10-03 18:14:00'),
  (3, 3, 3, '5YJ3E1EA7PF304567', 15.20, 'Optimist Hall, 1115 N Brevard St', 'Spectrum Center, 333 E Trade St', 'Completed', '2026-10-05 19:05:00', '2026-10-05 19:17:00'),
  (4, 4, 4, '1FMCU9G62NUA40567', 24.60, 'SouthPark Mall, 4400 Sharon Rd', 'Bank of America Stadium, 800 S Mint St', 'Completed', '2026-10-08 12:30:00', '2026-10-08 12:51:00'),
  (5, 1, 1, '3N1AB8CV5PY607890', 19.40, 'NoDa Brewing Company, 2921 N Tryon St', 'UNC Charlotte Student Union, 9201 University City Blvd', 'Completed', '2026-10-10 23:10:00', '2026-10-10 23:30:00'),
  (6, 5, 5, 'KM8J33A40PU506789', 38.95, 'Ballantyne Village, 14825 Ballantyne Village Way', 'Charlotte Douglas International Airport, 5501 Josh Birmingham Pkwy', 'Completed', '2026-10-12 05:45:00', '2026-10-12 06:16:00'),
  (7, 6, 6, '2T3P1RFV8PW708901', 12.85, 'Plaza Midwood, 1517 Central Ave', 'Freedom Park, 1900 East Blvd', 'Completed', '2026-10-14 16:20:00', '2026-10-14 16:31:00'),
  (8, 7, 2, '4T1G11AK5PU203456', 21.30, 'Atrium Health Carolinas Medical Center, 1000 Blythe Blvd', 'UNC Charlotte Student Union, 9201 University City Blvd', 'Completed', '2026-10-17 09:00:00', '2026-10-17 09:26:00'),
  (9, 10, NULL, NULL, 16.50, 'University Place, 8910 JW Clay Blvd', 'Optimist Hall, 1115 N Brevard St', 'Canceled', '2026-10-18 20:15:00', NULL),
  (10, 8, 1, '1HGCV1F30NA102345', 27.45, 'Charlotte Transit Center, 310 E Trade St', 'SouthPark Mall, 4400 Sharon Rd', 'Completed', '2026-10-21 18:50:00', '2026-10-21 19:14:00'),
  (11, 9, 3, '5YJ3E1EA7PF304567', 33.80, 'UNC Charlotte Student Union, 9201 University City Blvd', 'Charlotte Douglas International Airport, 5501 Josh Birmingham Pkwy', 'Completed', '2026-10-24 06:30:00', '2026-10-24 06:59:00'),
  (12, 2, 4, '1FMCU9G62NUA40567', 14.10, 'Freedom Park, 1900 East Blvd', 'Plaza Midwood, 1517 Central Ave', 'Completed', '2026-10-27 13:15:00', '2026-10-27 13:25:00'),
  (13, 3, NULL, NULL, 22.00, 'Spectrum Center, 333 E Trade St', 'University Place, 8910 JW Clay Blvd', 'Canceled', '2026-10-30 22:40:00', NULL),
  (14, 5, 6, '2T3P1RFV8PW708901', 17.65, 'Optimist Hall, 1115 N Brevard St', 'NoDa Brewing Company, 2921 N Tryon St', 'Completed', '2026-11-02 19:35:00', '2026-11-02 19:44:00'),
  (15, 4, 5, 'KM8J33A40PU506789', 45.25, 'Charlotte Douglas International Airport, 5501 Josh Birmingham Pkwy', 'Ballantyne Village, 14825 Ballantyne Village Way', 'Completed', '2026-11-05 21:10:00', '2026-11-05 21:43:00'),
  (16, 1, 1, '1HGCV1F30NA102345', 18.75, 'UNC Charlotte Student Union, 9201 University City Blvd', 'NoDa Brewing Company, 2921 N Tryon St', 'Completed', '2026-11-09 08:20:00', '2026-11-09 08:43:00'),
  (17, 6, 2, '4T1G11AK5PU203456', 26.40, 'Bank of America Stadium, 800 S Mint St', 'UNC Charlotte Student Union, 9201 University City Blvd', 'Completed', '2026-11-12 22:55:00', '2026-11-12 23:20:00'),
  (18, 7, 1, '3N1AB8CV5PY607890', 11.90, 'UNC Charlotte Student Union, 9201 University City Blvd', 'University Place, 8910 JW Clay Blvd', 'Completed', '2026-11-15 12:05:00', '2026-11-15 12:12:00'),
  (19, 9, 3, '5YJ3E1EA7PF304567', 20.35, 'Atrium Health Carolinas Medical Center, 1000 Blythe Blvd', 'Plaza Midwood, 1517 Central Ave', 'Completed', '2026-11-18 10:45:00', '2026-11-18 11:00:00'),
  (20, 8, 4, '1FMCU9G62NUA40567', 29.95, 'SouthPark Mall, 4400 Sharon Rd', 'Charlotte Transit Center, 310 E Trade St', 'Completed', '2026-11-20 17:25:00', '2026-11-20 17:52:00'),
  (21, 2, 5, 'KM8J33A40PU506789', 23.15, 'UNC Charlotte Student Union, 9201 University City Blvd', 'Optimist Hall, 1115 N Brevard St', 'Accepted', '2026-11-24 13:05:00', NULL),
  (22, 3, 6, '2T3P1RFV8PW708901', 31.70, 'Charlotte Douglas International Airport, 5501 Josh Birmingham Pkwy', 'Spectrum Center, 333 E Trade St', 'In Progress', '2026-11-24 12:50:00', NULL),
  (23, 5, 1, '1HGCV1F30NA102345', 16.80, 'NoDa Brewing Company, 2921 N Tryon St', 'Freedom Park, 1900 East Blvd', 'In Progress', '2026-11-24 13:00:00', NULL),
  (24, 10, NULL, NULL, 19.25, 'University Place, 8910 JW Clay Blvd', 'UNC Charlotte Student Union, 9201 University City Blvd', 'Requested', '2026-11-24 13:20:00', NULL),
  (25, 4, NULL, NULL, 36.40, 'Ballantyne Village, 14825 Ballantyne Village Way', 'Charlotte Douglas International Airport, 5501 Josh Birmingham Pkwy', 'Requested', '2026-11-24 13:22:00', NULL);

INSERT INTO Rating (Rating_ID, Ride_ID, Score) VALUES
  (1, 1, 5),
  (2, 2, 4),
  (3, 3, 5),
  (4, 4, 3),
  (5, 6, 5),
  (6, 7, 4),
  (7, 8, 5),
  (8, 10, 2),
  (9, 11, 5),
  (10, 12, 4),
  (11, 15, 1),
  (12, 16, 5),
  (13, 17, 4),
  (14, 19, 5),
  (15, 20, 3);

INSERT INTO Payment (Payment_ID, Payment_Method_ID, Ride_ID, Amount, Payment_Status, Tip, Processed_At) VALUES  (1, 1, 1, 18.75, 'Completed', 3.00, '2026-10-02 08:38:00'),
  (2, 3, 2, 42.10, 'Completed', 8.00, '2026-10-03 18:15:00'),
  (3, 4, 3, 15.20, 'Completed', NULL, '2026-10-05 19:18:00'),
  (4, 5, 4, 24.60, 'Completed', 2.50, '2026-10-08 12:52:00'),
  (5, 2, 5, 19.40, 'Completed', 4.00, '2026-10-10 23:31:00'),
  (6, 6, 6, 38.95, 'Completed', 7.00, '2026-10-12 06:17:00'),
  (7, 8, 7, 12.85, 'Completed', NULL, '2026-10-14 16:32:00'),
  (8, 9, 8, 21.30, 'Completed', 3.50, '2026-10-17 09:27:00'),
  (9, 10, 10, 27.45, 'Completed', NULL, '2026-10-21 19:15:00'),
  (10, 11, 11, 33.80, 'Completed', 6.00, '2026-10-24 07:00:00'),
  (11, 3, 12, 14.10, 'Completed', 2.00, '2026-10-27 13:26:00'),
  (12, 7, 14, 17.65, 'Completed', 3.00, '2026-11-02 19:45:00'),
  (13, 5, 15, 45.25, 'Refunded', NULL, '2026-11-05 21:44:00'),
  (14, 1, 16, 18.75, 'Completed', 3.00, '2026-11-09 08:44:00'),
  (15, 8, 17, 26.40, 'Completed', 5.00, '2026-11-12 23:21:00'),
  (16, 9, 18, 11.90, 'Failed', NULL, '2026-11-15 12:13:00'),
  (17, 12, 19, 20.35, 'Completed', 4.00, '2026-11-18 11:01:00'),
  (18, 10, 20, 29.95, 'Completed', 1.50, '2026-11-20 17:53:00');
