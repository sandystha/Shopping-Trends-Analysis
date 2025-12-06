
use DataWarehouseAnalytics;
select * from shopping_trends_updated
order by Gender
--How many unique customers have visited the store during the time period provided? 
--(To get a sense of the sample size you're working with.)
select count(Distinct Customer_ID) as Total_customer from shopping_trends_updated;
--3900
--Should the store stock more male or female clothing? (What % of customers are male vs. female?)
select 
	sum(case when Gender='Male' then 1 else 0 end) *100/ count(*) as Male,
	sum(case when Gender='Female' then 1 else 0 end)*100/count(*)  as Female,
	count(*) as total
from shopping_trends_updated;
--32% female,68% male

--What seasons are represented in the data? (Helps us track trends by time period.)
select distinct Season from shopping_trends_updated
--Summer
--Fall
--Spring
--Winter
--What are the most purchased categories and/or items by season? (This will help guide seasonal stocking strategies.)
select 
	Item_Purchased,
	count(distinct Customer_ID) as count_of_items
from shopping_trends_updated
where Season='Summer'
group by Item_Purchased
order by count_of_items desc;

-- in winter : Sunglasses followed by Pants and shirt
-- in fall: Jacket followed by Hat and Handbag
-- in spring: Sweater followed by Shorts and Skirt
-- in summer : Pants followed by Dress and Jewelry

--What are the most popular item colors by season? (Color preference can affect buying decisions.)
with ranking as (
	SELECT
		Season,
		Color,
		COUNT(*) AS total_purchases,
		RANK() OVER (PARTITION BY Season ORDER BY COUNT(*) DESC) AS color_rank
	FROM shopping_trends_updated
	GROUP BY Season, Color
)
select 
	Season,
	Color,
	total_purchases
from ranking
where  color_rank<=2

-- in fall color Magenta total_purchase 50
--  in fall color Yellow total_purchase 50
-- Spring color Olive 52
-- Spring color Gray 48
-- in Summer color Silver 59
-- in Summer color Teal 49
-- in Winter color Green 50
-- in Winter color Yellow 46

--Should stocking strategies vary by store location? (You can also explore if customer gender varies by location.)
select 
	Location,
	count(Customer_ID) as Total_customer
from shopping_trends_updated
group by Location
order by Total_customer desc
-- Montana(96),California(95),Idaho(93)

--Which locations are top-performing in terms of customer experience? (Use metrics like frequency of repeat visits or average spend
select 
	Location,
	avg(Review_Rating) as Review_rating
from shopping_trends_updated
group by Location
order by Review_rating desc

-- location such as Texas and Wisconsin have rating above 3.88 and hence other location can learn from process

--Does having more than 10 previous purchases correlate with higher total spend? (Understanding customer loyalty and value
SELECT 
    CASE 
        WHEN Previous_Purchases >= 10 THEN 'more_than_ten'
        ELSE 'less_than_10'
    END AS Previous_Purchases_status,
    SUM(Purchase_Amount_USD) AS total_amount
FROM shopping_trends_updated
GROUP BY 
    CASE 
        WHEN Previous_Purchases >= 10 THEN 'more_than_ten'
        ELSE 'less_than_10'
    END;

-- Yes customer who made higher number of purchase previous,mantain the trend of higher purchase 
-- when they return  they would be a good segment to target with any campagins
