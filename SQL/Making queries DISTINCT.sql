-- Select unique authors from the books table
SELECT DISTINCT author
FROM books;

-- query result
author
John Heilemann
Sheryl Sandberg
Brené Brown
DK
Delegates of the Constitutional
Rebecca Skloot


-- Select unique authors and genre combinations from the books table
SELECT DISTINCT author, genre
FROM books;

--query result
author	genre
Eben Alexander	Non Fiction
Adam Mansbach	Fiction
Garth Stein	Fiction
Gillian Flynn	Fiction
Tucker Carlson	Non Fiction
