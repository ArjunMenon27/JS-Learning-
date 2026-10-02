use glvcjunedb;

create table Customers(
customer_id int primary key,
name varchar(50),
email varchar(100),
created_at date
);


create table Orders(
order_id int primary key,
customer_id int,
order_date date,
amount float,
status varchar(10),
foreign key (customer_id) references customers(customer_id)
);

create table Payments(
payment_id int primary key,
order_id int,
payment_date date,
payment_mode varchar(20),
amount_paid float,
foreign key (order_id) references orders(order_id)
);


INSERT INTO Customers VALUES
(1, 'John Doe', 'john@example.com', '2023-01-01'),
(2, 'Jane Smith', 'jane@example.com', '2023-01-10'),
(3, 'Alice Brown', 'alice@example.com', '2023-02-01'),
(4, 'Bob Lee', 'bob@example.com', '2023-02-15'),
(5, 'Tom Hanks', 'tom@example.com', '2023-03-05'),
(6, 'Ellen Page', 'ellen@example.com', '2023-03-10'),
(7, 'Nancy Drew', 'nancy@example.com', '2023-04-01'),
(8, 'Steve Jobs', 'steve@example.com', '2023-04-15'),
(9, 'Bill Gates', 'bill@example.com', '2023-05-01'),
(10, 'Elon Musk', 'elon@example.com', '2023-05-10'),
(11, 'Satya Nadella', 'satya@example.com', '2023-06-01'),
(12, 'Sundar Pichai', 'sundar@example.com', '2023-06-10'),
(13, 'Mark Zuck', 'mark@example.com', '2023-07-01'),
(14, 'Jeff Bezos', 'jeff@example.com', '2023-07-15'),
(15, 'Larry Page', 'larry@example.com', '2023-08-01'),
(16, 'Sergey Brin', 'sergey@example.com', '2023-08-10'),
(17, 'Tim Cook', 'tim@example.com', '2023-09-01'),
(18, 'Oprah Winfrey', 'oprah@example.com', '2023-09-10'),
(19, 'Sheryl Sandberg', 'sheryl@example.com', '2023-10-01'),
(20, 'Jack Ma', 'jack@example.com', '2023-10-10');




INSERT INTO Orders VALUES
(101, 1, '2023-01-05', 250.00, 'Completed'),
(102, 2, '2023-01-15', 150.00, 'Pending'),
(103, 3, '2023-02-05', 300.00, 'Completed'),
(104, 4, '2023-02-20', 120.00, 'Completed'),
(105, 5, '2023-03-06', 200.00, 'Cancelled'),
(106, 6, '2023-03-15', 180.00, 'Completed'),
(107, 7, '2023-04-05', 210.00, 'Completed'),
(108, 8, '2023-04-20', 400.00, 'Pending'),
(109, 9, '2023-05-03', 220.00, 'Completed'),
(110, 10, '2023-05-12', 175.00, 'Completed'),
(111, 11, '2023-06-02', 130.00, 'Completed'),
(112, 12, '2023-06-12', 145.00, 'Pending'),
(113, 13, '2023-07-02', 155.00, 'Completed'),
(114, 14, '2023-07-18', 310.00, 'Completed'),
(115, 15, '2023-08-02', 275.00, 'Cancelled'),
(116, 16, '2023-08-15', 185.00, 'Completed'),
(117, 17, '2023-09-02', 205.00, 'Pending'),
(118, 18, '2023-09-12', 250.00, 'Completed'),
(119, 19, '2023-10-05', 300.00, 'Completed'),
(120, 20, '2023-10-12', 260.00, 'Completed');



INSERT INTO Payments VALUES
(201, 101, '2023-01-06', 'Credit Card', 250.00),
(202, 103, '2023-02-06', 'PayPal', 300.00),
(203, 104, '2023-02-21', 'Debit Card', 120.00),
(204, 106, '2023-03-16', 'Credit Card', 180.00),
(205, 107, '2023-04-06', 'UPI', 210.00),
(206, 109, '2023-05-04', 'Credit Card', 220.00),
(207, 110, '2023-05-13', 'PayPal', 175.00),
(208, 111, '2023-06-03', 'Credit Card', 130.00),
(209, 113, '2023-07-03', 'Debit Card', 155.00),
(210, 114, '2023-07-19', 'UPI', 310.00),
(211, 116, '2023-08-16', 'Credit Card', 185.00),
(212, 118, '2023-09-13', 'PayPal', 250.00),
(213, 119, '2023-10-06', 'Debit Card', 300.00),
(214, 120, '2023-10-13', 'UPI', 260.00),
(215, 102, '2023-01-16', 'UPI', 150.00),
(216, 112, '2023-06-13', 'PayPal', 145.00),
(217, 105, '2023-03-07', 'Credit Card', 200.00),
(218, 108, '2023-04-21', 'Debit Card', 400.00),
(219, 115, '2023-08-03', 'UPI', 275.00),
(220, 117, '2023-09-03', 'PayPal', 205.00);
