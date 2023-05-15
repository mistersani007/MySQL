create table fraudulent(
step int,
type varchar (20),
amount float,
nameorig varchar (50),
oldbalanceorg float,
newbalanceorig float,
namedest varchar (50),
oldbalancedest float,
newbalancedest float,
isfraud int,
isflaggedfraud int
);

select * from fraudulent;

-- copy files

copy public.fraudulent
from 'C:\Users\OWNER\Desktop\Datanalytics\SQL\SQL Videos\Case Study Video and datasets\Fraudulent Transactions.csv'
delimiter ',' csv header

-- Query (How many transaction occured per transaction type)
select type, count(*) as num_of_transactions
from fraudulent 
group by type
order by 2 desc;

-- Query (Which transaction type has the highest no of fraudulent transactions)
select type, count(*) as num_of_transactions
from fraudulent
group by type
order by 2 desc
limit 1;

-- Query (What is the average fraudulent transaction amount)
select type, round(avg(amount))
from fraudulent
where isfraud = 1
group by type;

-- Query (What is the maximum fraudulent transaction amount)
select max(amount)
from fraudulent;

-- Query (What is the manimum fraudulent transaction amount)
select min(amount)
from fraudulent;

-- Query (Top 10 customers with highest amount defrauded)
select nameorig, sum(amount)
from fraudulent 
where isfraud = 1
group by nameorig
order by 2 desc
limit 10;

-- Query (How effective is the bank in flagging fraud)
select * from fraudulent

select sum(isflaggedfraud) as flagged_as_fraud, sum(isfraud) as fraud, sum(isfraud)/sum(isflaggedfraud) as effectiveness
from fraudulent

-- Query (Who are the top 20 fraudstars)
select namedest, sum(amount) as total_amount
from fraudulent
where isfraud = 1
group by 1
order by 2 desc
limit 20;





