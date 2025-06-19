--create table [#temporders] (
--[order_id] [nvarchar] (20),
--[order_date] [date],
--[customer_id] [int] NULL,
--[payment] [nvarchar] (20),
--[note] [nvarchar] (255) NULL);


insert [#temporders] ([order_id],[order_date],[customer_id],[payment],[note])
select N'ORD20250604083742','2025-06-04',3020,N'銀行轉帳',N'' UNION ALL
select N'ORD20250605072813','2025-06-05',3020,N'信用卡',N'盡快' UNION ALL
select N'ORD20250605075155','2025-06-05',3025,N'信用卡',N'' UNION ALL
select N'ORD20250605080136','2025-06-05',3024,N'銀行轉帳',N'' UNION ALL
select N'ORD20250613032846','2025-06-13',3022,N'LINE Pay',N'' UNION ALL
select N'ORD20250613034436','2025-06-13',3024,N'銀行轉帳',N'要紅色的' UNION ALL
select N'ORD20250613034737','2025-06-13',3026,N'貨到付款',N'在2025/06/20要到' UNION ALL
select N'ORD20250613144618','2025-06-13',3026,N'貨到付款',N'盡快' UNION ALL
select N'ORD20250614131958','2025-06-14',3024,N'銀行轉帳',N'盡快';