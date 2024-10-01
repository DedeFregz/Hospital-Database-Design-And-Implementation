CREATE DATABASE hospital_patients_records_database

USE hospital_patients_records_database

CREATE TABLE patient (
	patient_id INT PRIMARY KEY IDENTITY,
	fullname VARCHAR (100) NOT NULL,
	patient_address VARCHAR (100) NOT NULL,
	date_of_birth DATE NOT NULL,
	insurance VARCHAR (100) NOT NULL,
	date_stopped DATE,
	phone_number VARCHAR (15),
	email VARCHAR (100)
);


SELECT * FROM patient


CREATE TABLE department (
	department_id INT PRIMARY KEY IDENTITY,
	department_name VARCHAR (100)
);

INSERT INTO department (department_name) VALUES
('Emergency Medicine'),
('Pediatrics'),
('Surgery'),
('Internal Medicine'),
('Orthopedics'),
('Radiology'),
('Cardiology'),
('Dermatology'),
('Neurology'),
('Psychiatry'),
('Obstetrics and Gynecology'),
('Anesthesiology'),
('Pathology'),
('Ophthalmology'),
('Gastroenterology');

SELECT *FROM department

-- Create the doctor table with a foreign key reference to department
CREATE TABLE doctor (
    doctor_id INT PRIMARY KEY IDENTITY,
    doctor_name VARCHAR(50) NOT NULL,
    doctor_specialty VARCHAR(100),
    department_id INT FOREIGN KEY REFERENCES department(department_id),
    doctor_phone_no VARCHAR(15),
    doctor_email VARCHAR(100)
);

INSERT INTO doctor (doctor_name, doctor_specialty, department_id, doctor_phone_no, doctor_email)
VALUES
('Dr. John Smith', 'Cardiology', 1, '555-123-4567', 'john.smith@example.com'),
('Dr. Jane Doe', 'Neurology', 1, '555-234-5678', 'jane.doe@example.com'),
('Dr. Emily White', 'Orthopedics', 2, '555-345-6789', 'emily.white@example.com'),
('Dr. Michael Brown', 'Pediatrics', 2, '555-456-7890', 'michael.brown@example.com'),
('Dr. Sarah Johnson', 'Dermatology', 3, '555-567-8901', 'sarah.johnson@example.com'),
('Dr. David Wilson', 'Radiology', 3, '555-678-9012', 'david.wilson@example.com'),
('Dr. Jessica Garcia', 'Oncology', 4, '555-789-0123', 'jessica.garcia@example.com'),
('Dr. Daniel Martinez', 'General Surgery', 4, '555-890-1234', 'daniel.martinez@example.com'),
('Dr. Laura Rodriguez', 'Internal Medicine', 1, '555-901-2345', 'laura.rodriguez@example.com'),
('Dr. William Hernandez', 'Family Medicine', 2, '555-012-3456', 'william.hernandez@example.com'),
('Dr. Megan King', 'Emergency Medicine', 3, '555-123-4568', 'megan.king@example.com'),
('Dr. James Lee', 'Obstetrics', 3, '555-234-5679', 'james.lee@example.com'),
('Dr. Elizabeth Perez', 'Anesthesiology', 4, '555-345-6780', 'elizabeth.perez@example.com'),
('Dr. Robert Wilson', 'Psychiatry', 4, '555-456-7891', 'robert.wilson@example.com'),
('Dr. Patricia Hall', 'Gastroenterology', 1, '555-567-8902', 'patricia.hall@example.com'),
('Dr. Joseph Young', 'Urology', 2, '555-678-9013', 'joseph.young@example.com'),
('Dr. Linda Allen', 'Rheumatology', 3, '555-789-0124', 'linda.allen@example.com'),
('Dr. Thomas Wright', 'Endocrinology', 3, '555-890-1235', 'thomas.wright@example.com'),
('Dr. Karen Scott', 'Infectious Disease', 4, '555-901-2346', 'karen.scott@example.com'),
('Dr. Charles Green', 'Ophthalmology', 1, '555-012-3457', 'charles.green@example.com'),
('Dr. Nancy Adams', 'Hematology', 2, '555-123-4569', 'nancy.adams@example.com');




CREATE TABLE appointment (
	appointment_id INT PRIMARY KEY IDENTITY,
	patient_id FOREIGN KEY REFERENCES patience (patient_id),
	doctor_id  FOREIGN KEY REFERENCES doctor (doctor_id),
	appointment_date DATE NOT NULL,
	appointment_time TIME NOT NULL, 
	satus VARCHAR (10) DEFAULT ('pending' 'cancelled' 'completed'),
	department_id FOREIGN KEY REFERENCES department(department_id)
);

INSERT INTO appointment (patient_id, doctor_id, appointment_date, appointment_time, status, department_id)
VALUES
(1, 1, '2024-09-25', '09:00:00', 'completed', 1),
(2, 1, '2024-09-25', '10:00:00', 'completed', 1),
(3, 2, '2024-09-26', '11:00:00', 'pending', 2),
(4, 2, '2024-09-27', '09:30:00', 'pending', 2),
(5, 3, '2024-09-27', '10:30:00', 'cancelled', 3),
(6, 3, '2024-09-28', '14:00:00', 'pending', 3),
(7, 1, '2024-09-29', '15:00:00', 'pending', 1),
(8, 2, '2024-09-30', '08:00:00', 'pending', 2),
(9, 3, '2024-09-30', '12:00:00', 'pending', 3),
(10, 1, '2024-10-01', '13:00:00', 'cancelled', 1),
(11, 2, '2024-10-02', '09:00:00', 'pending', 2),
(12, 3, '2024-10-02', '10:00:00', 'pending', 3),
(13, 1, '2024-10-03', '11:00:00', 'pending', 1),
(14, 2, '2024-10-03', '14:00:00', 'pending', 2),
(15, 3, '2024-10-04', '15:30:00', 'pending', 3),
(16, 1, '2024-10-05', '08:00:00', 'cancelled', 1),
(17, 2, '2024-10-06', '09:30:00', 'pending', 2),
(18, 3, '2024-10-06', '10:30:00', 'pending', 3),
(19, 1, '2024-10-07', '12:00:00', 'cancelled', 1),
(20, 2, '2024-10-07', '13:00:00', 'pending', 2),
(21, 3, '2024-10-08', '14:00:00', 'pending', 3),
(22, 1, '2024-10-09', '09:00:00', 'pending', 1),
(23, 2, '2024-10-10', '10:00:00', 'pending', 2),
(24, 3, '2024-10-10', '11:00:00', 'pending', 3),
(25, 1, '2024-10-11', '12:00:00', 'cancelled', 1),
(26, 2, '2024-10-12', '13:30:00', 'pending', 2),
(27, 3, '2024-10-12', '15:00:00', 'pending', 3),
(28, 1, '2024-10-13', '09:00:00', 'cancelled', 1),
(29, 2, '2024-10-14', '10:30:00', 'pending', 2),
(30, 3, '2024-10-15', '14:00:00', 'pending', 3);



CREATE TABLE medical_record (
	medical_record_id INT PRIMARY KEY IDENTITY,
	patient_id INT FOREIGN KEY REFERENCES patient (patient_id),
	diagnosis VARCHAR (200),
	medicine VARCHAR (150),
	doctor_id INT FOREIGN KEY REFERENCES doctor (doctor_id),
	last_appointment_date DATE,
	allegies VARCHAR (150)
);

INSERT INTO medical_record (patient_id, diagnosis, medicine, doctor_id, last_appointment_date, allergies)
VALUES
(1, 'Flu', 'Tamiflu', 1, '2024-09-25', 'None'),
(2, 'Headache', 'Ibuprofen', 1, '2024-09-25', 'None'),
(3, 'Allergy', 'Antihistamine', 2, '2024-09-26', 'Pollen'),
(4, 'Back Pain', 'Acetaminophen', 2, '2024-09-27', 'None'),
(5, 'Cold', 'Decongestant', 3, '2024-09-27', 'None'),
(6, 'Anxiety', 'Lorazepam', 3, '2024-09-28', 'None'),
(7, 'Diabetes', 'Metformin', 1, '2024-09-29', 'None'),
(8, 'Asthma', 'Inhaler', 2, '2024-09-30', 'Dust'),
(9, 'Flu', 'Oseltamivir', 3, '2024-09-30', 'None'),
(10, 'Hypertension', 'Lisinopril', 1, '2024-10-01', 'None'),
(11, 'Gastroenteritis', 'Proton Pump Inhibitor', 2, '2024-10-02', 'None'),
(12, 'Anemia', 'Iron Supplements', 3, '2024-10-02', 'None'),
(13, 'Depression', 'SSRIs', 1, '2024-10-03', 'None'),
(14, 'Migraine', 'Triptans', 2, '2024-10-03', 'Chocolate'),
(15, 'Arthritis', 'NSAIDs', 3, '2024-10-04', 'None'),
(16, 'Infection', 'Antibiotics', 1, '2024-10-05', 'None'),
(17, 'Skin Rash', 'Topical Cream', 2, '2024-10-06', 'None'),
(18, 'High Cholesterol', 'Statins', 3, '2024-10-06', 'None'),
(19, 'Pneumonia', 'Antibiotics', 1, '2024-10-07', 'None'),
(20, 'Fatigue', 'Multivitamins', 2, '2024-10-07', 'None'),
(21, 'Flu', 'Rest and Hydration', 3, '2024-10-08', 'None'),
(22, 'Cough', 'Cough Syrup', 1, '2024-10-09', 'None'),
(23, 'Fever', 'Antipyretics', 2, '2024-10-10', 'None'),
(24, 'Chest Pain', 'Beta-blockers', 3, '2024-10-10', 'None'),
(25, 'Kidney Stones', 'Pain Relievers', 1, '2024-10-11', 'None'),
(26, 'Allergy', 'Corticosteroids', 2, '2024-10-12', 'Shellfish'),
(27, 'Heartburn', 'Antacids', 3, '2024-10-12', 'None'),
(28, 'Dizziness', 'Meclizine', 1, '2024-10-13', 'None'),
(29, 'Nausea', 'Antiemetics', 2, '2024-10-14', 'None'),
(30, 'Rash', 'Hydrocortisone', 3, '2024-10-15', 'None');


