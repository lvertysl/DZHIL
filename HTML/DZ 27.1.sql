
create table car_brands (
id int unique auto_increment primary key ,
title varchar (128) not null  
);
insert into car_brands (title) 
values
 ("Audi"),("BMW"),("Porche"),("Ford"),("Fiat");
 select * from car_brands ;
 describe car_brands;
 
 create table car_models ( 
 id int  auto_increment primary key ,
 carbrandid int not null  ,
 title varchar (128) not null unique,
foreign key (carBrandId) references car_brands(id)

 );
 insert into car_models (carBrandId,title)
 values 
 ("1","TT"), ("1","R8"),("1","Q7"),("1","A6"),("1","A8"),
 ("2","3"),("2","5"),("2","X5"),("2","X6"),("2","Z3"),
 ("3","Fiesta"),("3","Focus"),("3","Fusion"),("3","Mondeo"),("3","Siera"),
 ("4","911"),("4","Cayenee"),("4","Panamera"),
 ("5","Palio"),("5","Ducato"),("5","Panda"),("5","Punto"),("5","Scudo");
 
 create table users (
 id int  auto_increment primary key ,
 email varchar (128) unique ,
passwords varchar (128) ,
Firstname varchar (128),
Secondname varchar(128)
); 

insert into users (email,passwords,Firstname,Secondname)
value
("foxgroup@gmail.com", "qwerty911a","Sasha","Markov"),
("ignotstats@gmail.com" , "ignotyskk1" , "Stas" , "Ionic" ),
("keibean@hotmail.com" , "Faster11cvas", "John", "Meykovis");

select * from users ;
 describe users;
 
create table cars (
    id int auto_increment primary key,
    userId int not null,
    carBrandId int not null,
    carModelId int not null,
    mileage int not null,
    initialMileage int not null,
    foreign key (userId) references users(id),
    foreign key (carBrandId) references car_brands(id),
    foreign key (carModelId) references car_models(id)
 );
 
 insert into cars (userId, carBrandId, carModelId, mileage, initialMileage)
 values
 (1, 1, 1, 50000, 0),
(2, 2, 3, 30000, 0),
(3, 3, 5, 70000, 20000);