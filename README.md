# 🛒 3C創客市集網站專案（PHP + SQL Server）

這是一個使用 PHP + SQL Server + Apache 架設的簡易電商管理平台，專為中小型創客或商家設計，提供商品管理、客戶管理、訂單管理與數據分析等功能。

---

## 📌 專案簡介

「3C創客市集」是一個單頁式操作的電商管理系統，整合了商品瀏覽、購物車、訂單處理與後台資料管理等功能。系統介面簡單直觀，適合初學者學習 Web 系統整合與資料庫應用。

**主要功能：**
- 商品瀏覽與管理（新增 / 修改 / 查詢 / 庫存）
- 客戶與訂單資料維護
- 供應商管理
- 數據統計與報表功能

---

## 🧰 技術架構

| 類別       | 技術                            |
|------------|---------------------------------|
| 前端       | HTML / CSS / JavaScript         |
| 後端       | PHP（原生）                     |
| 資料庫     | SQL Server                      |
| 資料庫驅動 | Microsoft SQLSRV（PHP Extension） |
| 網頁伺服器 | Apache（建議使用 XAMPP）        |

---

## 🗂️ 專案結構

```plaintext
3cmarket/
├── insert_data/                ← 匯出的資料內容（SQL INSERT 語法）
│   ├── customers_data.sql
│   ├── order_details_data.sql
│   └── ...
├── schema/                     ← 各資料表建立語法（CREATE TABLE）
│   ├── customer.sql
│   ├── order_details.sql
│   └── ...
├── project/                    ← PHP / HTML / CSS 程式碼
│   ├── index.php
│   ├── css/
│   └── ...
└── README.md                   ← 專案說明文件（本檔案）

🛠️ 使用方式與安裝教學

✅ 1. 匯入資料庫（使用 Azure Data Studio）
	1.	開啟 Azure Data Studio。
	2.	建立一個新的資料庫，例如命名為 3cmarket。
	3.	執行 /schema/ 中的 .sql 檔（如 customer.sql、order_details.sql）以建立資料表結構。
	4.	再執行 /insert_data/ 中的 .sql 檔（如 customers_data.sql、order_details_data.sql）以匯入測試資料。

✅ 2. 設定資料庫連線（PHP → SQL Server）

修改 project/includes/db.php 檔案如下：
<?php
$serverName = "localhost\\SQLEXPRESS"; // 或你的 SQL Server 名稱
$connectionOptions = array(
    "Database" => "3cmarket",
    "Uid" => "你的帳號",
    "PWD" => "你的密碼"
);

$conn = sqlsrv_connect($serverName, $connectionOptions);
if (!$conn) {
    die(print_r(sqlsrv_errors(), true));
}
?>

✅ 3. 部署網站至 Apache（XAMPP）
	1.	安裝 XAMPP（或 WAMP）並啟動 Apache。
	2.	將 project/ 資料夾中的所有內容複製到 htdocs/3cmarket/ 目錄下。
	3.	開啟瀏覽器，輸入網址： http://localhost/3cmarket/
  4.	即可開始使用網站。
