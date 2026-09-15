
Select
br.borrow_id,
-- student name
CONCAT(
    s.student_first_name,
    ' ',
    s.student_last_name
) AS student_name,

-- book
b.book_title,
b.book_author,
b.book_category,

-- borrow date
br.borrow_date

FROM borrow br
INNER JOIN students s
ON  br.student_id = s.student_id
INNER JOIN books b

ON br.book_id = b.book_id
WHERE br.borrow_return_date IS NULL
ORDER BY borrow_date DESC;

-- View Return books

UPDATE borrow
SET borrow_return_date = CURRENT_TIMESTAMP
WHERE borrow_id = 1
AND borrow_return_date IS NULL;

--  view return books

Select
br.borrow_id,
-- student name
CONCAT(
    s.student_first_name,
    ' ',
    s.student_last_name
) AS student_name,

-- book
b.book_title,
b.book_author,
b.book_category,

-- borrow date
br.borrow_date

FROM borrow br
INNER JOIN students s
ON  br.student_id = s.student_id
INNER JOIN books b

ON br.book_id = b.book_id
WHERE br.borrow_return_date IS NOT NULL
ORDER BY borrow_date DESC;