CREATE DATABASE homework_database_003;
USE homework_database_003;

  CREATE TABLE Orders (
  idOrders int PRIMARY KEY AUTO_INCREMENT,
  ordersName varchar(50) NOT NULL,
  ordersPrice int NOT NULL,
  dataOrder date NOT NULL,
  recipient varchar (30) NOT NULL,
  city varchar (40)
  );
  

# Задание 

CREATE DATABASE hw3;
use hw3;

create table staff (
	id int primary key auto_increment,
    name varchar (20) not null,
    surname varchar (20) not null,
    speciality varchar (20) not null,
    seniority int not null,
    salary int not null,
    age int not null
);

insert staff( name, surname, speciality, seniority, salary, age)
values
	('Вася', 'Васькин', 'начальник', 40, 100000, 60),
    ('Петя', 'Петькин', 'начальник', 8, 70000, 30),
    ('Катя', 'Катькина', 'инженер', 2, 70000, 25),
    ('Саша', 'Сашкин', 'инженер', 12, 50000, 35),
    ('Иван', 'Иванов', 'рабочий', 40, 30000, 59),
    ('Петр', 'Петров', 'рабочий', 20, 25000, 40),
    ('Сидор', 'Сидоров', 'рабочий', 10, 20000, 35),
    ('Антон', 'Антонов', 'рабочий', 8, 19000, 28),
    ('Юра', 'Юркин', 'рабочий', 5, 15000, 25),
    ('Максим', 'Воронин', 'рабочий', 2, 11000, 22),
    ('Юра', 'Галкин', 'рабочий', 3, 12000, 24),
	('Люся', 'Люськина', 'уборщик', 10, 10000, 49);

select * from staff;

-- 1.Отсортируйте поле “зарплата” (salary) в порядке убывания и возрастания
select *
from staff
order by salary;

select *
from staff
order by salary desc;

-- 2. Выведите 5 максимальных зарплат (salary)
select *
from staff
order by salary desc
limit 5;


-- 3. Подсчитать суммарную зарплату(salary) по каждой специальности (роst)
select роst, sum(salary)
from staff
group by роst;

-- 4. Найти количество сотрудников по специальности “Рабочий” (роst) в возрасте от 29 до 49 лет.
select count(*)
from staff
where роst='рабочий' and age between 29 and 49;

-- 5. Найти количество специальностей
select count(*)
from (select distinct роst from staff) as temp;

-- 6. Вывести специальности, у которых средний возраст сотрудника меньше 30 лет
select роst, avg(age)
from staff
group by роst
having avg(age)<30;
