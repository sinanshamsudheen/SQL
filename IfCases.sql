SELECT *,revenue - budget as profit FROM financials;
select *,YEAR(curdate())-birth_year as age from actors;
select *, IF(currency="USD",revenue*77,revenue) as revenue_inr from financials;

select *,
CASE
	WHEN unit="Billions" THEN revenue*1000
    WHEN unit="Thousands" THEN revenue/1000
    WHEN unit="Millions" THEN revenue
END as revenue_mln from financials order by revenue_mln DESC;