create database Blinkit;
select * from blinkit;


select item_type, count(item_type) as total_types
from blinkit
group by item_type;

select item_type , max(sales) as maximum_sale
from blinkit 
group by item_type
order by maximum_sale desc;

select * from blinkit;

select item_type , count(rating) as highest_rating
from blinkit
group by item_type
order by highest_rating desc;

select  outlet_type,max(sales) as top_outlet
from blinkit
group by outlet_type
order by top_outlet  desc;

select outlet_type ,count(outlet_type) as top_outlet_rating
from blinkit
group  by outlet_type
order by top_outlet_rating desc;

select * from blinkit;

select distinct outlet_establishment_year, outlet_location_type,outlet_size,outlet_type
from blinkit
order by outlet_establishment_year;

select item_type, max(outlet_type) as max_item
from blinkit
group by item_type
order by max_item
limit 5;

select outlet_type,item_type,sales,
 dense_rank() over(partition by item_type order by sales desc) as sales_rank
 from blinkit
 order by sales_rank desc;
 
 select item_type,outlet_type,sum(sales) as total_sales,
 avg(sum(sales)) over(partition by outlet_type ) as avg_outlet_sales
 from blinkit
 group by item_type,outlet_type;


select * from blinkit;

select distinct item_type
from blinkit;

select sum(sales)
from blinkit;


 
  

