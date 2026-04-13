create database practice;
use practice;
CREATE TABLE patients (
patient_id INT,
admission_date DATE,
diagnosis VARCHAR(50),
attending_doctor_id INT
);

INSERT INTO patients VALUES
(1, '2023-01-01', 'Flu', 101),
(2, '2023-01-01', 'Cold', 102),
(3, '2023-01-02', 'Flu', 101),
(4, '2023-01-02', 'Covid', 103),
(5, '2023-01-02', 'Flu', 101),
(6, '2023-01-03', 'Cold', 102),
(7, '2023-01-03', 'Covid', 103),
(8, '2023-01-03', 'Covid', 103);

select admission_date, count(patient_id) from patients
group by admission_date;
select diagnosis,count(patient_id) from patients
group by diagnosis 
having count(patient_id)>2;
select year(admission_date) from patients ;