--Before you move on to the next chapter, let's quickly review what you've learned so far about attributes and key constraints. If you're unsure about the answer, please quickly review chapters 2 and 3, respectively.

--Let's think of an entity type "student". A student has:

--a last name consisting of up to 128 characters (required),
--a unique social security number, consisting only of integers, that should serve as a key,
--a phone number of fixed length 12, consisting of numbers and characters (but some students don't have one).
-- Create the table
CREATE table students (
  last_name varchar(128) NOT NULL,
  ssn INTEGER UNIQUE,
  phone_no CHAR(12)
);

ALTER TABLE students
ADD CONSTRAINT ssn PRIMARY KEY(ssn);

--------------------------
       CORRECTION
--------------------------


-- Create the table
CREATE TABLE students (
  last_name varchar(128) NOT NULL,
  ssn integer PRIMARY KEY,
  phone_no char(12)
);
