-- Create a table to store personal information
CREATE TABLE personal_info (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

-- Insert a sample record into the personal_info table
INSERT INTO personal_info (id, first_name, last_name, email, phone_number)
VALUES (1, 'John', 'Doe', 'johndoe@example.com', '123-456-7890');

-- Create a table to store education details
CREATE TABLE education (
    id INT PRIMARY KEY,
    degree VARCHAR(100),
    university VARCHAR(100),
    graduation_year INT
);

-- Insert a sample record into the education table
INSERT INTO education (id, degree, university, graduation_year)
VALUES (1, 'Bachelor of Science', 'University of Example', 2022);

-- Create a table to store work experience
CREATE TABLE work_experience (
    id INT PRIMARY KEY,
    company VARCHAR(100),
    position VARCHAR(100),
    start_date DATE,
    end_date DATE
);

-- Insert a sample record into the work_experience table
INSERT INTO work_experience (id, company, position, start_date, end_date)
VALUES (1, 'ABC Company', 'Software Engineer', '2020-01-01', '2022-12-31');