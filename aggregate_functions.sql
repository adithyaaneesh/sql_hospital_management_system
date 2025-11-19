select count(*) from patient;
select gender, count(*) from patient group by gender;
select max(price_per_day) from room;
select min(age) from patient;
select avg(price_per_day) from room;