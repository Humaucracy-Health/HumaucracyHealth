DROP DATABASE patientInfo_db;
CREATE DATABASE patientInfo_db;

USE patientInfo_db;
​
CREATE TABLE patients (
    id INT NOT NULL AUTO_INCREMENT, /* NOT NULL means that this column can not be empty, and it is called a constraint */
    patient_name VARCHAR(255),
    PRIMARY KEY(id) /* if you don't do line 11, you get an error */
);

CREATE TABLE  charts (
    id INT NOT NULL AUTO_INCREMENT, /* NOT NULL means that this column can not be empty, and it is called a constraint */
    pat_id INT NOT NULL,
    doc_name VARCHAR(255),
    FOREIGN KEY (pat_id) REFERENCES patients(id),
    PRIMARY KEY(id) /* if you don't do line 11, you get an error */
);

CREATE TABLE appointments (
id INT NOT NULL AUTO_INCREMENT,
    doc_name VARCHAR(255),
    loc_name VARCHAR(255),
    pat_name VARCHAR(255),
    reason VARCHAR(255),
    note VARCHAR(255),
    vis_date DATE,
    vis_time TIME,
PRIMARY KEY(id)
);

CREATE TABLE payments (
    id INT NOT NULL AUTO_INCREMENT, /* NOT NULL means that this column can not be empty, and it is called a constraint */
    amount DECIMAL(10,2),    
    PRIMARY KEY(id) 
);