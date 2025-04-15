-- Creating tables
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    class VARCHAR(10)
);

CREATE TABLE subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(100)
);

CREATE TABLE marks (
    mark_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    subject_id INT,
    marks INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);

-- Inserting dummy students
INSERT INTO students VALUES
(1, 'Amit', 14, '8A'),
(2, 'Neha', 15, '9B'),
(3, 'Rahul', 14, '8A'),
(4, 'Priya', 16, '10A'),
(5, 'Kunal', 15, '9B');

-- Inserting dummy subjects
INSERT INTO subjects VALUES
(101, 'Math'),
(102, 'Science'),
(103, 'English');

-- Inserting dummy marks
INSERT INTO marks (student_id, subject_id, marks) VALUES
(1, 101, 85),
(1, 102, 92),
(1, 103, 78),
(2, 101, 65),
(2, 102, 58),
(2, 103, 70),
(3, 101, 90),
(3, 102, 95),
(3, 103, 80),
(4, 101, 33),
(4, 102, 44),
(4, 103, 39),
(5, 101, 88),
(5, 102, 76),
(5, 103, 91);
