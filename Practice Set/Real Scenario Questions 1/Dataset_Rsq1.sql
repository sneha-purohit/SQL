Create database Student;
Use Student;
CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT,
    enrollment_date DATE,
    major_id INTEGER
);

-- Table 2: Majors
CREATE TABLE majors (
    major_id INTEGER PRIMARY KEY,
    major_name TEXT NOT NULL,
    department TEXT,
    credits_required INTEGER
);

-- Table 3: Enrollments (students enrolled in courses with grades)
CREATE TABLE enrollments (
    enrollment_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_name TEXT,
    semester TEXT,
    grade TEXT,
    credits INTEGER
);


INSERT INTO majors (major_id, major_name, department, credits_required) VALUES
(1, 'Computer Science', 'Engineering', 120),
(2, 'Business Administration', 'Business', 125),
(3, 'Psychology', 'Liberal Arts', 120),
(4, 'Biology', 'Science', 120),
(5, 'Mathematics', 'Science', 120);

-- Insert Students
INSERT INTO students (student_id, first_name, last_name, email, enrollment_date, major_id) VALUES
(1, 'Alice', 'Johnson', 'alice.j@email.com', '2022-09-01', 1),
(2, 'Bob', 'Smith', 'bob.s@email.com', '2021-09-01', 2),
(3, 'Charlie', 'Brown', 'charlie.b@email.com', '2023-01-15', 1),
(4, 'Diana', 'Prince', 'diana.p@email.com', '2022-09-01', 3),
(5, 'Eve', 'Davis', 'eve.d@email.com', '2021-09-01', 4),
(6, 'Frank', 'Miller', 'frank.m@email.com', '2023-09-01', 2),
(7, 'Grace', 'Lee', 'grace.l@email.com', '2022-01-10', 1),
(8, 'Henry', 'Wilson', 'henry.w@email.com', '2021-09-01', NULL),
(9, 'Iris', 'Taylor', 'iris.t@email.com', '2023-09-01', 5),
(10, 'Jack', 'Anderson', 'jack.a@email.com', '2022-09-01', 4);

-- Insert Enrollments
INSERT INTO enrollments (enrollment_id, student_id, course_name, semester, grade, credits) VALUES
(1, 1, 'Introduction to Programming', 'Fall 2023', 'A', 3),
(2, 1, 'Data Structures', 'Spring 2024', 'A-', 4),
(3, 2, 'Marketing Fundamentals', 'Fall 2023', 'B+', 3),
(4, 2, 'Financial Accounting', 'Spring 2024', 'B', 3),
(5, 3, 'Introduction to Programming', 'Fall 2023', 'A', 3),
(6, 4, 'General Psychology', 'Fall 2023', 'A-', 3),
(7, 5, 'Cell Biology', 'Spring 2024', 'B', 4),
(8, 6, 'Marketing Fundamentals', 'Fall 2023', 'B+', 3),
(9, 7, 'Introduction to Programming', 'Fall 2023', 'B', 3),
(10, 1, 'Database Systems', 'Fall 2024', 'A', 3),
(11, 3, 'Database Systems', 'Fall 2024', 'B+', 3),
(12, 2, 'Organizational Behavior', 'Spring 2024', 'A-', 3),
(13, 9, 'Calculus I', 'Fall 2023', 'A', 4),
(14, 10, 'Cell Biology', 'Fall 2023', 'A-', 4),
(15, 4, 'Social Psychology', 'Spring 2024', 'A', 3);


