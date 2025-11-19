select p.first_name, d.name from patient p join appointment a on p.patient_id=a.patient_id join doctor d on  a.doctor_id = d.doctor_id;
select a.appointment_date, d.specialization  from appointment a left join doctor d on a.doctor_id=d.doctor_id;
select p.city, d.name from patient p join appointment a on p.patient_id = a.patient_id join doctor d on a.doctor_id=d.doctor_id;

-- select d.name as doctor_name, dept.department from doctor d join department dept on d.doctor_id = dept.department_id;

SELECT D.name AS doctor_name,Dept.department_name FROM Doctor D JOIN Department Dept ON D.doctor_id = Dept.department_id;

select concat(p.first_name,' ',p.last_name) as full_name, a.status from patient p join appointment a on p.patient_id = a.patient_id;

