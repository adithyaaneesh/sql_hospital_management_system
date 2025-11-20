select * from patient where patient_id in
(select patient_id from appointment where doctor_id in
(select doctor_id from doctor where specialization = 'Cardiologist'));

select * from doctor where doctor_id in 
(select doctor_id from appointment where status = 'Scheduled');

select room_type,price_per_day from room where 
(select  max(price_per_day) from room);

-- 4.  Count doctors in the department with highest patient. 
select count(*) as total_doctors from doctor where -- department_id=
(select department_id from department where department_name =(select max(department_name) from department));

select dept.department_name, count(d.name) as doctor_count from department dept join doctor d on  d.doctor_id=dept.department_id;


