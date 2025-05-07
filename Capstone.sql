create database capstone1;
use capstone1;
show tables;

select * from sales;
select * from membership;
select * from channels;
select * from benefits;
select * from categories;


select Category, sum(Views) as TotalViews from Channels group by Category;

select Category, sum(Subscribers) as TotalSubscribers from Channels group by Category;

# Monthly Revenue by Tier:
SELECT m.Membership_Tier, SUM(m.Monthly_Revenue) AS TotalRevenue, (SUM(m.Monthly_Revenue) / 
(SELECT SUM(Monthly_Revenue) FROM Membership)) * 100 AS Percentage
FROM Membership m GROUP BY m.Membership_Tier;


#Total Members by Tier:
SELECT m.Membership_Tier, SUM(m.Member_Count) AS TotalMembers
FROM Membership m
GROUP BY m.Membership_Tier;



