# Hospital-Database-Design-And-Implementation
## Project Overview 
This repository contains the **Database Design and Implementation** project For **joseph Hospital** patient and Medical Management System, Completed by **Dede Analytics in september 2024.** the System is design to efficiently manage hospital data, including patients information, doctor details, medical records, appointment and department data.
___


## Table of Content
1. [Introduction](#Introduction).
2. [Database Design process](#database-design-process).
     - [Requirements Gathering](#requirements-gathering).
     - [conceptual Design](#Conceptual-design).
     - [Logical Design](#logical-design).
     - [Physical Design](#physical-design).
3.[Database Schema and Implementation](#database-schema-and-implementation).
    - [Patients Table](#patients-table).
    - [Department Table](#department-table).
    - [Medical Record Table](#Medical-record-table).
    - [Doctors Table](#doctors-table).
    - [Appointment Table](#appointment-table).
4. [Normalization](#normalization).
     - [First Norm Form](#first-normal-form).
     - [Second Norm Form](#second-normal-form).
     - [Third Norm Form](#third-normal-form).
   [Justification of Design Choice](#justification-of-design-choice).
___

## Introduction
Dede Hospital requires a Scalable efficients solution to manage its healthcare operations, including patient registration, appointment scheduling, and medical records management. This system enhances operational efficiency, ensures data integrity, and provides quick access to essencial information foe medical staffs.

___

## Database Design process
### Requirement Gathering
In collaboration with stakeholders, the following requirement were established:
- Comprehensive details of patients, doctors and department.
- Management of medical records (diagnoses, prescriptions, and treatment history).
- Real-time appointment scheduling and tracking.

### Conceptual Designs
Using an Entity-Relationship (ER) model, the following entities are defined:
- **Patients**: Personal and Contacts Details
- **Doctors**: Specialties and Availability
- **Medical Records**: Historical Records of Diagnoses and Medications
- **Apointments**: scheduling and Status
- **Department**: Organizational Structure for Medical Departments

  ### Logical Designs
  The conceptual ER model was translated into structured relational database tables with appropriate relationships. Foreign keys were used to maintain  referential integity.

  ### Physical Designs
  The System was implemented using T-SQl onSQL server. Key features included:
  - Constrains to ensure data accuracy.
  - optimized Queries for performance.
 
  - ___
 
    ## Database Schema and Implementataion
    ### Patients Table

| Column         | Data Type   | Constraints                   |
|----------------|-------------|-------------------------------|
| patient_id      | INT         | PRIMARY KEY, AUTO-INCREMENT    |
| Prefix         | VARCHAR(10) |                               |
| first_name      | VARCHAR(100) | NOT NULL                      |
| last_name       | VARCHAR(100) | NOT NULL                      |
| date_of__birth    | DATE        | NOT NULL                      |
| insurance      | VARCHAR(100) |                               |
| phone_number    | VARCHAR(15) | UNIQUE                        |
| email   | VARCHAR(100)| 

  
### Departments Table
 
| Column         | Data Type   | Constraints                   |
|----------------|-------------|-------------------------------|
| department_id  | INT         | PRIMARY KEY, AUTO-INCREMENT    |
| department_name | VARCHAR(100) | NOT NULL                      |
 
 
 ### Doctors Table
 
| Column         | Data Type   | Constraints                   |
|----------------|-------------|-------------------------------|
| doctor_id       | INT         | PRIMARY KEY, AUTO-INCREMENT    |
| doctor_name      | VARCHAR(50) |                               |
| speciality     | VARCHAR(100) |                               |
| department_id   | INT         | FOREIGN KEY REFERENCES Departments|
| doctor_phone_no | VARCHAR (15) |
| doctor_email | VARCHAR (100) |
 
 
 ### Medical Records Table
 
| Column          | Data Type   | Constraints                   |
|-----------------|-------------|-------------------------------|
| medical_record_Id        | INT         | PRIMARY KEY, AUTO-INCREMENT    |
| patient_id      | INT         | FOREIGN KEY REFERENCES Patients|
| diagnosis|    VARCHAR (200)                     |           |   
| medicine       | VARCHAR (150)      |                               |
| doctor_id    |  INT  |  FOREIGN KEY REFERENCE Department   |
| last_ appointment_date         | DATE        |                               |
| allegies  | VARCHAR (150)  |        |   


### Appointments Table
 
| Column         | Data Type   | Constraints                   |
|----------------|-------------|-------------------------------|
| AppointmentId  | INT         | PRIMARY KEY, AUTO-INCREMENT    |
| patient_id      | INT         | FOREIGN KEY REFERENCES Doctors |
| doctor_id      | INT         | FOREIGN KEY REFERENCES Patients|
| appointment_date          | DATE        | NOT NULL                 |
| appointment_time  |  DATE  |  NOT NULL  |
| appointment_status         | VARCHAR(15) | DEFAULT ( 'PENDING' 'Completed' 'Cancelled)|
| department_id  | INT | FOREIGN KEY REFERENCE Department |


___

## Normalization

### First Normal Form (1FN)
- ensure atomicity of value in each column.

### Second Normal Forms (2NF)
- Eliminates partial dependencies by ensuring that non key attributes depend fully on the primary key
  
### Third Normal Form (3NF)
- Eliminate transitive dependencies, ensuring date integrity by linking related tables through FOREIGN keys.

## CONCLUSION
The Dede Hospital Database System is a robust and scalable solution designed to improve operational efficiency and healthcare quality, providers with quick access to essential data while ensuring patient data integrity.
