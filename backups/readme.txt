C:\Dev\it30a-Mangkabong\backups

C:\IT30A

1. CREATE DATABASE <database_name>;
2. SHOW DATABASES
3.connect
4.create table<table_name_in_plural> ();
5, INSERT INTO <TABLE_NAME_IN_PLURAL>
    (columns)
    VALUES(values);
Utility Commands
\! cls
mysqldump -u root -p --database library_db > C:\Dev\it30a-Mangkabong\backups\08162026_library_db.mysql


mysqldump -u root -p --databases library_db  >C:\IT30A\IT30A\backups\%date:~-4%_%date:~4,2%_%date:~7,2%_%time:~0,2%_%time:~3,2%_%time:~6,2%_library_db.sql

lab 2

 ALTER TABLE students ADD COLUMN student_create_at TIMESTAMP NULL DEFAULT NULL;
 
 UPDATE students SET student_create_at = CURRENT_TIMESTAMP WHERE student_create_at IS NULL;
  ALTER TABLE students MODIFY COLUMN student_create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;