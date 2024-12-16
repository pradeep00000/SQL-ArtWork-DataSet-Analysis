create schema university;
select * from university.artworks;

#1. List All Artworks
select * from university.artworks;

#2. Find All Artworks by Otto Wagner
select * from university.artworks
where Artist = 'Otto Wagner';

#3. Retrieve Artworks Created in the 20th Century
select * from university.artworks
where Date between 1900 and 1999;

#4. Get Unique Artists
select distinct Artist from university.artworks;

#5. Count the Number of Artworks in the Dataset
select count(*) from university.artworks;

#6. List Artworks Where Medium Contains 'Ink'
select * from university.artworks
where Medium like '%Ink%';

#7. Find Artworks by Artists Born Before 1900
select * from university.artworks
where BeginDate <1900;

#8. Count Artworks Grouped by Nationality
select Nationality , count(Nationality)
from university.artworks
group by Nationality;

#9. Get Artworks with a Height Greater Than 50 cm
select * from university.artworks
where `Height (cm)` > 50;

#10. Find Artworks Not on View
select * from university.artworks
where OnView is null;

#11. List Top 5 Most Common Mediums Used
select Medium , count(Medium) as Count
from university.artworks
group by Medium 
order by Count desc
limit 5;

#12. Retrieve Artworks with Missing Depth
select * from university.artworks
where `Depth (cm)` is null;

#13. Find Artists with More Than 3 Artworks
select Artist , count(Artist) as Count
from university.artworks
group by Artist
having Count >3;

#14. Calculate Average Height of Artworks by Artist
select Artist , avg(`Height (cm)`)
from university.artworks
group by Artist;

#15. List Artworks with More Than One Medium Mentioned
select * from university.artworks
where Medium like '%,%';

#16. Retrieve Artworks Created by Female Artists
select * from university.artworks
where Gender = '(female)';

#17. Find the Latest Created Artwork
select * from university.artworks
order by Date desc
limit 1;

#18. List Artworks by Artists Austrian Nationalities
select * from university.artworks
where Nationality = '(Austrian)';

#19. Identify Artworks by Artists Born in the Same Year
select Artist , BeginDate
from university.artworks
group by Artist , BeginDate
having count(Artist) > 1;

#20. Calculate Total Number of Artworks for Each Century
select 
  case 
    when date < 1800 then '18th century or earlier'
    when date between 1800 and 1899 then '19th century'
    when date between 1900 and 1999 then '20th century'
    else '21st century'
  end as century,
  count(*) as total_artworks
from university.artworks
group by century;
