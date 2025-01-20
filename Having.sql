SELECT release_year,count(*) as cnt FROM movies group by release_year having cnt>2  order by cnt;
From -> where -> group by-> having -> order by
