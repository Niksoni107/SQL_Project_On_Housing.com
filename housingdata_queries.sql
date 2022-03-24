#Property in Ahemdabad for Rent
SELECT Property_Type, Area_sqft, Rent_Ru, Location FROM housing.ahmedabad_lease
LIMIT 5;

#Property in Ahemdabad having differance in rent

select min(Rent_Ru) as min_rent, max(Rent_Ru) as max_rent 
from housing.ahmedabad_lease;

#In Pune city check minimum rent on property type.
select Property_Type, Property_Id as id, min(Rent_Ru) as minrent
from housing.pune_lease
group by id;


#In Delhi check maximum rent upto.
select max(Rent_Ru) from housing.delhi_lease ;

#Location wise rent in Hyderabad.
select sum(Rent_Ru), Location
from housing.hyderabad_lease
group by Location 
order by Rent_Ru desc
limit 5;

#Property wise rent in Mumbai
SELECT s1.Property_Id, s1.Rent_Ru, 
s2.seller, s2.Seller_Type from
housing.mumbai_lease as s1 join housing.mumbaia_lease_seller as s2 
on s1.Property_Id = s2.Property_Id order by Property_Id asc;

#location wise property price in Kolkata by asc order.
SELECT * FROM housing.kolkata_property ORDER BY location ASC;

#By max. area and rent choose property in Thane.

SELECT * FROM housing.thane_lease ORDER BY Rent_Ru desc, Area_sqft ;

#In Ghaziabad check property between 5M to 20M.
SELECT Property_Type, Price_Ru, Location FROM ghaziabad_property WHERE Price_Ru BETWEEN 5000000 AND 20000000;

#Location wise rent availability in Faridabad.
SELECT Location, SUM(Rent_Ru) AS total 
FROM housing.faridabad_lease
GROUP BY Location 
ORDER BY total DESC;

#Get the location, the number of Property_Type in that location, 
#and the total rent grouped by location, and sorted 
#by total rent in descending order.


SELECT Location, COUNT(Property_Type), Area_sqft, SUM(Rent_Ru) AS total 
FROM housing.ahmedabad_lease
GROUP BY Location 
ORDER BY total DESC;

#Get the average rent by location in ascending order of rent.

SELECT Property_Type, AVG(Area_sqft) as Avg_area, Avg(Rent_Ru) as Avg_Rent , Location
FROM housing.ahmedabad_lease 
GROUP BY Location
ORDER BY Avg_Rent ASC;

#Get the maximum area by location in ascending order of area.

SELECT Location , MAX(Area_sqft) AS MaxArea
FROM housing.ahmedabad_lease
GROUP BY Location  
ORDER BY MaxArea ASC;

# Which location costly in rent 
SELECT Location, SUM(Rent_Ru) AS Total_Rent 
FROM housing.ahmedabad_lease
GROUP BY Location
HAVING SUM(Rent_Ru) > 30000
ORDER BY Total_Rent DESC;

#seller having property for rent in bangluru location

SELECT b.Seller, b.Seller_Type, a.Property_Type, a.Rent_Ru, a.Location
FROM housing.bangluru_lease as a
INNER JOIN housing.bangluru_lease_seller as b
ON a.Property_Id = b.Property_Id;

# Chennai property seller having property greater than 1Cr.
SELECT b.Seller, a.Price_Ru, a.Location
FROM chennai_property as a
INNER JOIN chennai_seller as b
ON a.Property_Id = b.Property_Id AND Price_Ru > 10000000;

#In Chennai 2nd highest costly property price,
SELECT MIN(Price_Ru) 
FROM (
        SELECT * 
        FROM chennai_property
        ORDER BY Price_Ru DESC 
        LIMIT 2
     ) AS P;
