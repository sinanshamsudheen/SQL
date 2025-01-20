SELECT count(*) from movies where industry="Bollywood";
select distinct industry from movies;
select * from movies where title like "%Thor%";
select * from movies where studio="";
select * from movies where imdb_rating>=9;
select * from movies where imdb_rating>=5 and imdb_rating<=8;
select * from movies where imdb_rating between 5 and 8;
select * from movies where release_year=2022 or release_year=2019 or release_year=2014;
select * from movies where release_year IN(2022,2019,2014);
select * from movies where studio in("Hombale films","Marvel studios");
select * from movies where imdb_rating is nULL;
select * from movies where imdb_rating is not NULL;
select * from movies order by imdb_rating;
select * from movies order by imdb_rating desc;
select * from movies where industry="hollywood" order by imdb_rating;
select * from movies where industry="hollywood" order by imdb_rating desc limit 5;
select * from movies where industry="hollywood" order by imdb_rating desc limit 5 offset 1;

