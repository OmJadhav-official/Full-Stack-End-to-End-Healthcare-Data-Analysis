CREATE DATABASE Healthcare;
USE Healthcare;

 -- Doctor table
 CREATE TABLE doctor (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(100),
    specialty VARCHAR(50),
    phone_number VARCHAR(20),
    years_of_experience INT,
    hospital_affiliation VARCHAR(100),
    hospital_clinic VARCHAR(100),
    specialization VARCHAR(100),
    email VARCHAR(100)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Doctor.csv'
INTO TABLE doctor
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(doctor_id, doctor_name, specialty, phone_number, years_of_experience,
 hospital_affiliation, hospital_clinic, specialization, email);

-- Lab Result
CREATE TABLE Lab_Result (
    Lab_Result_ID INT,
    Visit_ID INT,
    Test_Name VARCHAR(50),
    Test_Date DATE,
    Result VARCHAR(20),
    Normal_Range VARCHAR(50),
    Units VARCHAR(10),
    Comments VARCHAR(100),
    Test_Result VARCHAR(20),
    Reference_Range VARCHAR(50)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Lab Result.csv'
INTO TABLE Lab_Result
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- Visit table
CREATE TABLE Visit (
    Visit_ID INT,
    Patient_ID INT,
    Doctor_ID INT,
    Visit_Date DATE,
    Reason_For_Visit VARCHAR(100),
    Diagnosis VARCHAR(100),
    Follow_Up_Required VARCHAR(10),
    Visit_Type VARCHAR(50),
    Visit_Status VARCHAR(50),
    Diagnosis_Code VARCHAR(20),
    Follow_up_Required2 VARCHAR(10),
    Prescribed_Medications VARCHAR(100)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Visit.csv'
INTO TABLE Visit
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- Treatment Table
CREATE TABLE Treatments (
    Treatment_ID INT,
    Visit_ID INT,
    Medication_Prescribed VARCHAR(100),
    Dosage VARCHAR(20),
    Instructions VARCHAR(100),
    Treatment_Cost DECIMAL(10,2),
    Treatment_Type VARCHAR(100),
    Treatment_Name VARCHAR(100),
    Status VARCHAR(50),
    Outcome VARCHAR(50),
    Treatment_Description VARCHAR(255)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Treatments.csv'
INTO TABLE Treatments
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- Patient Table
CREATE TABLE patient (
    patient_id INT PRIMARY KEY,
    gender VARCHAR(10),
    age INT,
    phone_number VARCHAR(20),
    address VARCHAR(255),
    blood_type VARCHAR(5),
    emergency_contact VARCHAR(100),
    insurance_provider VARCHAR(100),
    state VARCHAR(50),
    city VARCHAR(50),
    country VARCHAR(50),
    policy_number VARCHAR(50),
    medical_history VARCHAR(100),
    race VARCHAR(50),
    ethnicity VARCHAR(50),
    marital_status VARCHAR(20),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    chronic_condition VARCHAR(100),
    allergies VARCHAR(100),
    date_of_birth DATE
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Patient.csv'
INTO TABLE patient
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;