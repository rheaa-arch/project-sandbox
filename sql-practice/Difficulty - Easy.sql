-- Show first name, last name, and gender of patients whose gender is 'M'
SELECT first_name, last_name, gender FROM patients 
where gender is 'M';

-- Show first name and last name of patients who does not have allergies. (null)
SELECT first_name, last_name FROM patients
where allergies is null;

-- Show first name of patients that start with the letter 'C'
SELECT first_name FROM patients
where first_name like 'C%';

-- Show first name and last name of patients that weight within the range of 100 to 120 (inclusive)
SELECT first_name, last_name FROM patients
where weight >= 100 and weight <=120;

-- Update the patients table for the allergies column. If the patient's allergies is null then replace it with 'NKA'
UPDATE patients
SET allergies = 'NKA'
WHERE allergies is null;

-- Show first name and last name concatinated into one column to show their full name.
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM patients;

-- Show first name, last name, and the full province name of each patient. Example: 'Ontario' instead of 'ON'
SELECT first_name, last_name, province_name FROM patients
LEFT JOIN province_names 
ON patients.province_id = province_names.province_id;

-- Show how many patients have a birth_date with 2010 as the birth year.
SELECT count(*) as total_patients FROM patients
WHERE year(birth_date) = 2010;

-- Show the first_name, last_name, and height of the patient with the greatest height.
SELECT first_name, last_name, max(height) from patients
limit 1;
OR
SELECT first_name, last_name, height from patients
where height = (
  select max(height)
  from patients
  );

-- Show all columns for patients who have one of the following patient_ids: 1,45,534,879,1000
SELECT 
	patient_id,
	first_name,
    last_name,
    gender,
    birth_date,
    city,
    province_id,
    allergies,
    height,
    weight
from patients
where patient_id in (1,45,534,879,1000);

-- Show the total number of admissions
SELECT count(*) as total_admission from admissions;

-- Show all the columns from admissions where the patient was admitted and discharged on the same day.
select 
	patient_id,
    admission_date,
    discharge_date,
    diagnosis,
    attending_doctor_id
from admissions
where admission_date = discharge_date;
