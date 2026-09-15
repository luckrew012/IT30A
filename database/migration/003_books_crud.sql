-- Books Query #1
Select * from books;
-- books Query #2 - Select books order by id ASC
Select * from books
ORDER BY book_id ASC;
-- books Query #3 - Select books order by id DESC
Select * from books
ORDER BY books_id DESC;

-- books Query #4 - Select books order by book_title ASC
    
Select 
    book_title,
    book_author,
    book_category

FROM books
ORDER BY book_tile ASC;

-- books Query #5 - Select students order by book title DESC
Select 
    book_title,
    book_author,
    book_category
FROM books
ORDER BY book_title DESC;

-- book Query #6 - Select book order by book category ASC
    
Select 
    book_category,
    book_author,
    book_title

FROM books
ORDER BY book_tile ASC;

-- book Query #7 - Select book order by book category DESC
Select 
    book_category,
    book_title,
    book_author
   
FROM books
ORDER BY book_title DESC;

-- book Query #8 - Select book with specific id number
Select 
     book_title,
    book_author,
    book_category

FROM books
WHERE book_id = 1
LIMIT 1;

-- book Query #9 - Update book_title,book_author, book_category using specific id number
UPDATE books
SET
     book_title = 'Super Book',
    book_author = 'Christian Broadcasting Network',
    book_category = 'Religion'

WHERE
    book_id = 1;
