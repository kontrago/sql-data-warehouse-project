IF object_id ('bronze.crm_cust_info','U') IS NOT NULL
 DROP TABLE bronze.crm_cust_info;
CREATE TABLE bronze.crm_cust_info (
cst_id INT,
cst_key NVARCHAR(50),
cst_firstname NVARCHAR(50),
cst_lastname NVARCHAR(50),
cst_material_status NVARCHAR(50),
cst_gender NVARCHAR(50),
cst_create_date DATE
);

IF object_id ('bronze.crm_prd_info','U') IS NOT NULL
 DROP TABLE bronze.crm_prd_info;
CREATE TABLE bronze.crm_prd_info (
prd_id INT,
prd_key NVARCHAR(50),
prd_nm NVARCHAR(50),
prd_cost MONEY,
prd_line NVARCHAR(50),
prd_start_date DATE,
prd_end_date date
);

IF object_id ('bronze.crm_sales_details','U') IS NOT NULL
 DROP TABLE bronze.crm_sales_details;
CREATE TABLE bronze.crm_sales_details (
sls_ord_num NVARCHAR(50),
sls_prod_key NVARCHAR(50),
sls_cust_id INT,
sls_order_date int,
sls_ship_date int,
sls_due_date int,
sls_sales MONEY,
sls_quantity INT,
sls_price MONEY
);


IF object_id ('bronze.erp_cust_az12','U') IS NOT NULL
 DROP TABLE bronze.erp_cust_az12;
CREATE TABLE bronze.erp_cust_az12 (
CID NVARCHAR(50),
BDATE DATE,
GEN NVARCHAR (10)
);

IF object_id ('bronze.erp_loc_a101','U') IS NOT NULL
 DROP TABLE bronze.erp_loc_a101;
CREATE TABLE bronze.erp_loc_a101 (
CID NVARCHAR(50),
CNTRY NVARCHAR (50)
);


IF object_id ('bronze.erp_px_cat_g1v2','U') IS NOT NULL
 DROP TABLE bronze.erp_px_cat_g1v2;
CREATE TABLE bronze.erp_px_cat_g1v2 (
ID NVARCHAR(50),
CAT NVARCHAR (50),
SUBCAT NVARCHAR(50),
MAINTENANCE NVARCHAR (50)
);
