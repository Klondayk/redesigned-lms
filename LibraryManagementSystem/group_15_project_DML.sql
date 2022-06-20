INSERT INTO manager(manager_id, manager_name, manager_username, manager_pass) values
(1, 'bakr', 'bakr123', 'password'), 
(2, 'iliyar', 'iliyar123', 'password');

INSERT INTO users (user_name, user_username, user_pass, user_phone) values
('ali', 'ali123', 'password', '00112233445'),
('kemal', 'kemal123', 'password', '11223344556');

INSERT INTO publishers(publisher_name, publisher_username, publisher_pass, publisher_phone) values
('pearson', 'pearson123', 'password', 00011100011),
('oxford', 'oxford123', 'password', 11100011100);

INSERT INTO books(book_title, book_author, book_genre, book_topics, publisher_id, year_published, book_available, status,times_borrowed) values
('Angels and Demons', 'Dan Brown', 'fiction', 'fiction', 1, 2000, 'yes', 'Not Borrowed',15),
('Gargoyles', 'Stanislav Volter', 'fiction', 'fiction', 3, 1856, 'yes', 'Not Borrowed',35),
('Angels and Demons', 'Dan Brown', 'fiction', 'fiction', 1, 2000, 'yes', 'Not Borrowed',20),
('Database Management Systems', 'Ramakrishnan', 'non-fiction', 'Normalization', 2, 2003, 'no', 'Not Borrowed',49);

INSERT INTO borrower_details(user_id, book_id,user_username, borrowed_on, due_date, return_date, days_overdue, penalty_charged) values
(1, 1,'ali123', '2020-12-20 03:14:07', '2020-12-25', '2020-12-16 05:14:07', 0, '$10'),
(2, 2,'kemal123', '2020-12-18 12:14:07', '2020-12-23', '2020-12-23 20:14:07', 0, '$0');
