-- Query (How much is the total donation)
select * from donation_data;
select sum(donation) as total_dotantion from donation_data;

-- Query (What is the total donation by gender)
select gender, sum(donation) as Total_Donations
from donation_data
group by gender;

-- Query (Show the total donation and number of donations by gender)
select gender, count(donation) as Number_of_Donations, sum(donation) as Total_Donations
from donation_data
group by gender;

-- Query (Total donation made by frequency of donation)
SELECT donor_data.donation_frequency, SUM(donation_data.donation) as total_donation
FROM donor_data
FULL JOIN donation_data
ON donation_data.id = donor_data.id
GROUP BY donation_frequency
ORDER BY total_donation desc;

-- Query (Total donation and number of donations by Job Field)
select job_field, count(donation) as Number_of_donation, sum(donation) as total_donation
from donation_data
group by job_field
order by total_donation desc;

-- Query (Total donation and number of donations above $200)
select donation, count(donation) as Number_of_Donation, sum(donation) as Total_donation
from donation_data
where donation >= 200
group by donation
order by number_of_donation desc;

-- Query (Total donation and number of donations below $200)
select donation, count(donation) as Number_of_Donation, sum(donation) as Total_donation
from donation_data
where donation < 200
group by donation
order by number_of_donation desc;


-- Query (Which top 10 state contributes the highest donation)
select state, sum(donation) as Total_donation
from donation_data
group by state
order by total_donation desc
limit 10;


-- Query (Which top 10 state contributes the least donation)
select state, sum(donation) as Total_donation
from donation_data
group by state
order by total_donation asc
limit 10;


-- Query (What are the top 10 cars driven by the highest donors)
SELECT donor_data.car, SUM(donation_data.donation) as total_donation
FROM donor_data
FULL JOIN donation_data
ON donation_data.id = donor_data.id
GROUP BY car
ORDER BY total_donation desc
limit 10;


-- Recommendations--
Marketing/Donation appeals should be made to the states with least donations(i.e Wyoming) and an appreciation for donation video commercial should be aired or posted targeting the states with the highest donations (i.e California). This will increase the number of donors in the database.

An incentive should be set at various donation value caps. This will increase the value of donations by donors.

Marketing/donation appeals should be targeted to Human resources professional as they are the job field with the highest number of donors.




































































