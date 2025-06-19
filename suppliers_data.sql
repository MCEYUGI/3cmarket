--create table [#tempsuppliers] (
--[supplier_id] [int] identity,
--[supplier_name] [nvarchar] (100),
--[contact_name] [nvarchar] (100) NULL,
--[phone] [nvarchar] (50) NULL,
--[email] [nvarchar] (100) NULL,
--[address] [nvarchar] (255) NULL,
--[start_date] [date] NULL,
--[notes] [nvarchar] (max) NULL);



set identity_insert [#tempsuppliers] on;


insert [#tempsuppliers] ([supplier_id],[supplier_name],[contact_name],[phone],[email],[address],[start_date],[notes])
select 1,N'創客科技有限公司',N'王大明',N'0912345678',N'contact1@example.com',N'台北市信義區科技路1號','2023-01-01',N'主要供應智慧裝置' UNION ALL
select 2,N'三創電子',N'李小美',N'0987654321',N'contact2@example.com',N'新北市板橋區中山路2段88號','2023-03-15',N'供應教育用產品' UNION ALL
select 3,N'智聯未來',N'陳建中',N'0922333444',N'contact3@example.com',N'台中市南屯區創意街100號','2024-05-01',N'專攻AI與自動化控制' UNION ALL
select 1008,N'創客電子元件有限公司',N'張經理',N'02-12345678',N'manager@makerparts.com',N'台北市內湖區科技路50號','2020-01-15',N'專業Arduino開發板供應商' UNION ALL
select 1009,N'智慧感測器工廠',N'李主管',N'04-23456789',N'supervisor@sensors.com',N'台中市南屯區工業路80號','2019-05-20',N'各類感測器模組製造' UNION ALL
select 1010,N'機器人零件貿易',N'王總監',N'07-34567890',N'director@robotparts.com',N'高雄市三民區商業路120號','2021-03-10',N'機器人套件進口商' UNION ALL
select 1011,N'3D列印材料商行',N'陳老闆',N'03-45678901',N'boss@3dfilament.com',N'桃園市桃園區民生路90號','2018-11-05',N'3D列印線材批發' UNION ALL
select 1012,N'開發工具企業',N'蔡副理',N'06-56789012',N'vice@devtools.com',N'台南市東區體育路60號','2022-07-18',N'開發工具與測試設備' UNION ALL
select 1013,N'電路板製造廠',N'吳經理',N'03-67890123',N'pcb@circuits.com',N'新竹市東區園區路40號','2020-09-12',N'PCB客製化服務' UNION ALL
select 1014,N'創客教育器材',N'林主任',N'02-78901234',N'edu@makeredu.com',N'台北市松山區教育路30號','2021-11-08',N'教育用創客套件' UNION ALL
select 1015,N'物聯網模組供應商',N'黃經理',N'04-89012345',N'iot@modules.com',N'台中市北屯區科技二路70號','2020-06-25',N'WiFi、藍牙模組專業供應' UNION ALL
select 1016,N'微控制器代理商',N'劉副總',N'07-90123456',N'mcu@distributor.com',N'高雄市左營區自由路150號','2019-12-03',N'各品牌微控制器代理' UNION ALL
select 1017,N'創客工具專賣店',N'許店長',N'02-01234567',N'tools@makerstore.com',N'台北市大安區復興南路200號','2021-08-15',N'焊接工具、測量儀器專賣' UNION ALL
select 2001,N'華聯科技',N'陳執行長',N'0223456789',N'chen@huliantech.com',N'台北市大安區新生南路二段1號','2025-06-14',N'主要供應商';

set identity_insert [#tempsuppliers] off;