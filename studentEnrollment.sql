CREATE DATABASE IF NOT EXISTS studentEnrollment;
USE studentEnrollment;

--Drop tables in case they already exist
DROP TABLE IF EXISTS studentPhone;
DROP TABLE IF EXISTS studentAddress;
DROP TABLE IF EXISTS enrollment;
DROP TABLE IF EXISTS course;
DROP TABLE IF EXISTS student;

--Create table for student info
CREATE TABLE student(
    ID CHAR(9) PRIMARY KEY,
	fName VARCHAR(20) NOT NULL,
	mName VARCHAR(20),              --note
	lName VARCHAR(20) NOT NULL
);

--Create table for courses
CREATE TABLE course(
    CRN INT AUTO_INCREMENT PRIMARY KEY,
    subject CHAR(4) NOT NULL,               --note
    courseNo INT NOT NULL,
    name VARCHAR(40) NOT NULL,
    section TINYINT NOT NULL                --note
);

--Create an intermediary table for student and course
CREATE TABLE enrollment(
    studentID INT NOT NULL,
    CRN INT NOT NULL,
    CONSTRAINT pk_enrollment PRIMARY KEY(studentID, CRN),
    CONSTRAINT enrollment_fk_student FOREIGN KEY(studentID)
        REFERENCES student(ID)
            ON DELETE SET NULL,                             --note
    CONSTRAINT enrollment_fk_course FOREIGN KEY(CRN)
        REFERENCES course(CRN)
            ON DELETE SET NULL
);

--Create table for student address
CREATE TABLE studentAddress(
    studentID CHAR(9) PRIMARY KEY,
    type VARCHAR(4) NOT NULL,              --note
    value VARCHAR(40),
    CONSTRAINT uc_address UNIQUE(value, type)
    CONSTRAINT pk_address PRIMARY KEY(studentID),
    CONSTRAINT studentAddress_fk_student FOREIGN KEY(studentID)
        REFERENCES student(ID)
            ON DELETE SET NULL
);

--Create table for student phone numbers
CREATE TABLE studentPhone(
    studentID CHAR(9) PRIMARY KEY,
    type VARCHAR(4) NOT NULL,              --note
    value INT NOT NULL,
    CONSTRAINT uc_phone UNIQUE(value, type)
    CONSTRAINT pk_address PRIMARY KEY(studentID),
    CONSTRAINT studentPhone_fk_student FOREIGN KEY(studentID)
        REFERENCES student(ID)
            ON DELETE SET NULL
);

--Create an index that will make searching for a particular course much faster
CREATE INDEX course_subject_ix
    ON course(subject);