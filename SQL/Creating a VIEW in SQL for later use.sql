-- Your code to create the view:
CREATE VIEW library_authors AS
SELECT DISTINCT author AS unique_author
FROM books;

-- Select all columns from library_authors
SELECT * 
FROM library_authors;

--query result
unique_author
John Heilemann
Sheryl Sandberg
Brené Brown
DK
Delegates of the Constitutional
Rebecca Skloot
Crispin Boyer

