CREATE TABLE book(book_no INT PRIMARY KEY, title CHAR(20), cost INT);
CREATE TABLE circulation(userid CHAR(10), book_no INT, issuedate DATE, returndate DATE, FOREIGN KEY (book_no) REFERENCES book(book_no));

INSERT INTO book(book_no, title, cost) VALUES (101, 'How to become Batman', 1000);
INSERT INTO book(book_no, title, cost) VALUES (102, 'How I met you', 300);
INSERT INTO book(book_no, title, cost) VALUES (103, 'Me and My World', 500);
INSERT INTO book(book_no, title, cost) VALUES (104, 'Untangled', 700);

INSERT INTO circulation(userid, book_no, issuedate, returndate) VALUES ('CS201', 101, TO_DATE('19/01/2011', 'dd/mm/yyyy'), TO_DATE('27/01/2011', 'dd/mm/yyyy'));
INSERT INTO circulation(userid, book_no, issuedate, returndate) VALUES ('CS202', 102, TO_DATE('19/02/2011', 'dd/mm/yyyy'), TO_DATE('27/02/2011', 'dd/mm/yyyy'));
