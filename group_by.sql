select specialization, count(*) from doctor group by specialization;
select city, count(*) as total_patients from patient group by city;
select status, count(*) as status_count from appointment group by status;
select room_type, count(*) as total_available_rooms from room group by room_type;
select specialization, count(*) as total_doctors from doctor group by specialization;