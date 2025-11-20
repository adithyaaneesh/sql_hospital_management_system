select concat(p.first_name,' ',p.last_name) as patient_name, p.age, d.name as doctor_name, a.appointment_date 
from patient p join appointment a on p.patient_id=a.patient_id join doctor d on a.doctor_id=d.doctor_id;

select d.doctor_id, d.name as doctor_name, count(a.appointment_id) as total_appointments from doctor d 
left join appointment a on d.doctor_id=a.doctor_id group by d.doctor_id, d.name;

select distinct room_type from room;

select d.name, a.status, count(a.appointment_id) as no_of_appointments from appointment a 
join doctor d on d.doctor_id=a.doctor_id group by d.doctor_id, a.status; 

select dept.department_name, count(d.doctor_id) as doctor_count from department dept join doctor d on
 d.doctor_id=dept.department_id group by dept.department_name, d.doctor_id;
 
 