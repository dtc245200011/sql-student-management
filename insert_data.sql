CREATE DATABASE QuanLySinhVien;
USE QuanLySinhVien;
CREATE TABLE Class (
  ClassID INT PRIMARY KEY,
  ClassName VARCHAR(50),
  StartDate DATE,
  Status TINYINT
);

CREATE TABLE Student (
  StudentID INT AUTO_INCREMENT PRIMARY KEY,
  StudentName VARCHAR(100),
  Address VARCHAR(200),
  Phone VARCHAR(20),
  Status TINYINT,
  ClassID INT,
  FOREIGN KEY (ClassID) REFERENCES Class(ClassID)
);

CREATE TABLE Subject (
  SubID INT PRIMARY KEY,
  SubName VARCHAR(100),
  Credit INT,
  Status TINYINT
);

CREATE TABLE Mark (
  MarkID INT AUTO_INCREMENT PRIMARY KEY,
  SubID INT,
  StudentID INT,
  Mark DECIMAL(5,2),
  ExamTimes INT,
  FOREIGN KEY (SubID) REFERENCES Subject(SubID),
  FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
INSERT INTO Class VALUES (1, 'A1', '2008-12-20', 1);
INSERT INTO Class VALUES (2, 'A2', '2008-12-22', 1);
INSERT INTO Class VALUES (3, 'B3', CURRENT_DATE, 0);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);

INSERT INTO Student (StudentName, Address, Status, ClassId)
VALUES ('Hoa', 'Hai phong', 1, 1);

INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);

INSERT INTO Subject
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);
SELECT * FROM Class;
SELECT * FROM Student;
SELECT * FROM Subject;
SELECT * FROM Mark;
