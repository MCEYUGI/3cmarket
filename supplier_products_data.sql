--create table [#tempsupplier_products] (
--[supplier_id] [int],
--[product_id] [int]);


insert [#tempsupplier_products] ([supplier_id],[product_id])
select 1,1 UNION ALL
select 1,2 UNION ALL
select 1,4 UNION ALL
select 1,10 UNION ALL
select 2,5 UNION ALL
select 2,6 UNION ALL
select 2,7 UNION ALL
select 2,9 UNION ALL
select 3,3 UNION ALL
select 3,8 UNION ALL
select 3,11 UNION ALL
select 3,12 UNION ALL
select 3,13 UNION ALL
select 1008,14 UNION ALL
select 1008,15 UNION ALL
select 1008,43 UNION ALL
select 1009,14 UNION ALL
select 1009,44 UNION ALL
select 1009,45 UNION ALL
select 1010,15 UNION ALL
select 1010,46 UNION ALL
select 1010,47 UNION ALL
select 1011,43 UNION ALL
select 1011,44 UNION ALL
select 1012,14 UNION ALL
select 1012,15 UNION ALL
select 1012,45 UNION ALL
select 1013,43 UNION ALL
select 1013,46 UNION ALL
select 1014,14 UNION ALL
select 1014,15 UNION ALL
select 1015,44 UNION ALL
select 1015,47 UNION ALL
select 1016,14 UNION ALL
select 1016,43 UNION ALL
select 1017,15 UNION ALL
select 1017,45 UNION ALL
select 1017,46;