--create table [#tempcustomers] (
--[customer_id] [int] identity,
--[customer_name] [nvarchar] (100),
--[gender] [nvarchar] (10) NULL,
--[age] [int] NULL,
--[phone] [nvarchar] (20),
--[address] [nvarchar] (255) NULL,
--[email] [nvarchar] (100) NULL,
--[created_at] [datetime] NULL);



set identity_insert [#tempcustomers] on;


insert [#tempcustomers] ([customer_id],[customer_name],[gender],[age],[phone],[address],[email],[created_at])
select 3019,N'陳志豪',N'男',28,N'0912345678',N'台北市信義區松仁路100號',N'maker.chen@gmail.com','2025-06-04 08:20:41.100' UNION ALL
select 3020,N'林雅婷',N'女',32,N'0923456789',N'新北市板橋區中山路200號',N'arduino.lin@email.com','2025-06-04 08:20:41.100' UNION ALL
select 3021,N'王建國',N'男',45,N'0934567890',N'桃園市中壢區中正路300號',N'diy.wang@maker.com','2025-06-04 08:20:41.100' UNION ALL
select 3022,N'張小芬',N'女',26,N'0945678901',N'台中市西屯區台灣大道400號',N'iot.zhang@tech.com','2025-06-04 08:20:41.100' UNION ALL
select 3023,N'李明達',N'男',38,N'0956789012',N'高雄市前鎮區中華路500號',N'robot.li@creator.com','2025-06-04 08:20:41.100' UNION ALL
select 3024,N'黃美玲',N'女',29,N'0967890123',N'台南市東區大學路600號',N'sensor.huang@maker.tw','2025-06-04 08:20:41.100' UNION ALL
select 3025,N'劉志強',N'男',35,N'0978901234',N'新竹市東區光復路700號',N'pcb.liu@tech.com','2025-06-04 08:20:41.100' UNION ALL
select 3026,N'吳佳慧',N'女',31,N'0989012345',N'彰化市中山路800號',N'smart.wu@iot.com','2025-06-04 08:20:41.100' UNION ALL
select 3027,N'蔡宗翰',N'男',27,N'0990123456',N'嘉義市文化路900號',N'drone.tsai@maker.com','2025-06-04 08:20:41.100' UNION ALL
select 3028,N'許雅雯',N'女',33,N'0901234567',N'宜蘭市中正路1000號',N'3d.hsu@print.com','2025-06-04 08:20:41.100' UNION ALL
select 3029,N'周建國',N'男',45,N'0922113344',N'雲林縣斗六市中山路9號',N'jianguo.chou@email.com','2025-06-05 07:54:21.340' UNION ALL
select 4029,N'mao',N'Male',32,N'0900000000',N'嘉義縣民雄鄉大學路一段',N'123123@gmail.com','2025-06-13 14:47:58.720' UNION ALL
select 5029,N'王小風',N'Male',30,N'0912345678',N'北市信義區信義路5段7號',N'ming.wang@email.com','2025-06-14 13:21:29.023';

set identity_insert [#tempcustomers] off;