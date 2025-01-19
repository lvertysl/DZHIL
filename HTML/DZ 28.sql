select * from user_profiles where name like "%am%";

select max(totalCost) as max_expense from expenses where carId in (select id from cars where carBrandId = (select id from car_brands where title = "Audi"));

select count(*) as count_models, carBrandId from car_models 
where carBrandId in (select id from car_brands where title in ("AUDI", "BMW"))
group by carBrandId;

select carModelId, carBrandId, count(userId) as user_count from cars 
group by carModelId, carBrandId;

select * from user_profiles where userId in (select userId from cars);