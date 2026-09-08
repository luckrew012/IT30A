
CREATE TABLE IF NOT EXISTS students (

    student_id INT AUTO_INCREMENT PRIMARY KEY,

    student_first_name VARCHAR(50) NOT NULL,
    student_last_name VARCHAR(50) NOT NULL,
    student_course VARCHAR(50) NOT NULL,

    student_created_at TIMESTAMP NOT NULL
        DEFAULT CURRENT_TIMESTAMP

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci;

-- Table #2 books
CREATE TABLE IF NOT EXISTS books(
    -- Primary key for book table

book_id INT AUTO_INCREMENT PRIMARY KEY,
-- book details
book_title varchar (50) NOT NULL,
book_author varchar (100) NOT NULL,
book_category varchar (50) NOT NULL, 
  -- book created at timestamp
book_created_at timestamp NOT NULL
DEFAULT CURRENT_TIMESTAMP

)ENGINE=InnoDB

Default CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

-- TABLE #3 borrow
CREATE TABLE IF NOT EXISTS borrow(
  -- Primary key for borrow table
    borrow_id INT AUTO_INCREMENT PRIMARY KEY,
 -- Foreign key
student_id INT NOT NULL,
book_id INT NOT NULL,

  -- borrow timestamp not null by default
borrow_date timestamp NOT NULL
DEFAULT CURRENT_TIMESTAMP,


-- borrow return timestamp null by default
borrow_return_date timestamp NULL
DEFAULT NULL,

-- BORROW  TABLE contraint
CONSTRAINT fk_borrow_student
FOREIGN KEY (student_id)
REFERENCES students(student_id)
ON  UPDATE CASCADE
ON DELETE RESTRICT,


CONSTRAINT
FOREIGN KEY (book_id)
REFERENCES books(book_id)
ON UPDATE CASCADE
ON DELETE RESTRICT


)ENGINE=InnoDB

Default CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

-- insert into stud
INSERT INTO students (
    student_first_name,
    student_last_name,
    student_course
) VALUES
    ('Bench', 'Mangkabong', 'BSIT'),
    ('Quen', 'Mangkabong', 'BSIT'),
    ('MENG', 'Mangkabong', 'BSED');

-- insert into books
INSERT INTO books (
    book_title,
    book_author,
    book_category
) VALUES
   ("BookWorm","Lex","Science FIction"),
("Project Loki","Unknown","Mystery"),
("Demon Slayer", "Koyoharu Gotouge", "Fiction");
-- insert into borrow
INSERT INTO borrow (
    student_id,
    book_id
) VALUES
    (1, 2),
    (2, 1),
    (3, 3);
  