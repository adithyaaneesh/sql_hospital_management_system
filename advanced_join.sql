select d.name, concat(p.first_name,' ', p.last_name) as patient_name, a.status from appointment a left join doctor d on a.doctor_id = d.doctor_id
join  patient p on a.patient_id = p.patient_id where status = 'Completed';

select dept.department_name, d.name from doctor d right join department dept on d.doctor_id = dept.department_id;

select p.patient_id, concat(p.first_name,' ', p.last_name) as patient_name,p.age, p.gender, p.city, a.status from patient p left join appointment a on p.patient_id = a.patient_id where status = 'cancelled';

select p.patient_id,a.appointment_id, concat(p.first_name,' ', p.last_name) as patient_name,p.age, p.gender, p.city, a.status from patient p left join appointment a on p.patient_id = a.patient_id
 where p.age > 35;

select a.appointment_id,d.name, d.phone from appointment a right join doctor d on a.doctor_id = d.doctor_id;