-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.

SELECT * FROM Books As b JOIN authors AS  a ON b.author_id = a.id WHERE name='George R.R. Martin';

-- Find all fields (book and author related) for all books written by Milan Kundera.

SELECT * FROM Books As b JOIN authors AS  a ON b.author_id = a.id WHERE name='Milan Kundera';

-- Find all books written by an author from China or the UK.
SELECT * FROM Books As b JOIN authors AS  a ON b.author_id = a.id WHERE nationality = 'China' OR nationality='United Kingdom';

-- Find out how many books Albert Camus wrote.
SELECT COUNT(title) FROM Books As b JOIN authors AS  a ON b.author_id = a.id WHERE name = 'Albert Camus';

-- Find out how many books were written by US authors.
SELECT COUNT(title) FROM Books As b JOIN authors AS  a ON b.author_id = a.id WHERE nationality = 'United States of America';


-- Find all books written after 1930 by authors from Argentina.
SELECT * FROM books AS b JOIN authors AS a ON b.author_id = a.id WHERE publication_date > 1930 AND nationality = 'Argentina' ;

-- Find all books written before 1980 by authors not from the US.
SELECT * FROM books AS b JOIN authors AS a ON b.author_id = a.id WHERE publication_date < 1980 AND nationality = 'United States of America' ;

-- Find all authors whose names start with 'J'.
SELECT * FROM books AS b JOIN authors AS a ON b.author_id = a.id WHERE name LIKE 'J%';

-- Find all books whose titles contain 'the'.
SELECT * FROM books AS b JOIN authors AS a ON b.author_id = a.id WHERE title LIKE '%the%';

-- Find all authors who have written books with that start with the letter 'N'.

SELECT * FROM books AS b JOIN authors AS a ON b.author_id = a.id WHERE title LIKE 'N%';

