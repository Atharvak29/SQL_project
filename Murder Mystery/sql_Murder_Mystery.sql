-- hint 1
/* */
/*

select * from crime_scene_report
where (city = "SQL City" and type = "murder") and date = 20180115
limit 50;   */

/* Morty Schapiro __1st witness
select * from person
where address_street_name like "Northwestern Dr"
order by address_number desc
limit 50;
*/

/* Annabel Miller __2nd witness
select * from person
where name like "%Annabel%" and address_street_name LIKE "Franklin Ave"
limit 50; */

/* Both witnesses description of the event  
select p.id,p.name, i.transcript from interview i
join person p
on p.id = i.person_id
where p.name in ("Morty Schapiro", "Annabel Miller");*/

/* Jeremy Bowers should be the murder according to mortys description

select p.id, mem.id as gym_id , p.name, dl.plate_number, mem.membership_status  from get_fit_now_member mem
join person p on mem.person_id = p.id
join drivers_license dl on p.license_id = dl.id
where (mem.id like "48Z%" and mem.membership_status = "gold") and dl.plate_number like "%H42W%"
limit 50;
*/
--Now ltes see if the above name has really checked in at 9th jan 

-- select check_in_date from get_fit_now_check_in
/* 
select mem.id, mem.name, ch.check_in_date 
from get_fit_now_member mem
 join get_fit_now_check_in ch
 on mem.id = ch.membership_id
where ch.check_in_date = 20180109 and mem.name like "Jeremy Bowers";*/

/* Interview of the murderer
select * from interview
where person_id = "67318";*/

/* 
select p.id ,p.name, dl.gender, dl.height, dl.hair_color,dl.car_model from drivers_license dl
join person p on p.license_id = dl.id
where (dl.car_model = "Model S" and dl.gender = "female") and (dl.hair_color = "red") and (dl.height between 65 and 67)
limit 50; 
*/

/*
select p.id, p.name,fb.event_id ,fb.event_name, fb.date from facebook_event_checkin fb
join person p on p.id = fb.person_id
where fb.event_name = "SQL Symphony Concert"
limit 50;


select person_id, count(*) as attended from facebook_event_checkin 
where event_name = "SQL Symphony Concert"
group by person_id
having (date between 20171201 and 20171231)  and attended = 3;
*/

/* 

select count(*) as attended, p.id, p.name,fb.event_id ,fb.event_name, fb.date from facebook_event_checkin fb
join person p on p.id = fb.person_id
where fb.event_name = "SQL Symphony Concert"
group by person_id
having (date between 20171201 and 20171231)  and attended = 3;
*/

/* 
select p.id ,p.name, dl.gender, dl.height, dl.hair_color,dl.car_model from drivers_license dl
join person p on p.license_id = dl.id
where p.id = 99716;
*/

select person.name , income.annual_income from income
join person on person.ssn = income.ssn
where  person.id = 99716;