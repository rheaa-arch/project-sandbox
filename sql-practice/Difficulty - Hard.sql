/* 
Show all of the patients grouped into weight groups.
Show the total amount of patients in each weight group.
Order the list by the weight group decending.
For example, if they weight 100 to 109 they are placed in the 100 weight group, 110-119 = 110 weight group, etc. */
select 
	count(weight) as patients_in_group,
  floor(weight/10)*10 as weight_group
from patients
group by weight_group
order by weight_group desc;

/* 
Show patient_id, weight, height, isObese from the patients table.
Display isObese as a boolean 0 or 1.
Obese is defined as weight(kg)/(height(m)2) >= 30.
weight is in units kg.
height is in units cm.*/
select 
	patient_id,
  weight,
  height,
    case
      when weight / power(height/100.0, 2) >= 30 then	'1'
      else '0'
   	end as isObese
from patients;

-- Show patient_id, first_name, last_name, and attending doctor's specialty.
-- Show only the patients who has a diagnosis as 'Epilepsy' and the doctor's first name is 'Lisa'
-- Check patients, admissions, and doctors tables for required information.
