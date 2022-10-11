#PRODUCT TOTAL COSTING

CREATE TABLE dwh_3_dimezone.product_totalCost
as
(SELECT DISTINCT
	a.sales_prd_code,
    b.sales_prd_desc,
    c.prd_imp_marker,
    a.prd_cost,
    a.prd_opex_cost
    
FROM dwh_2_atmzonee.sales_productcosting as a
      JOIN dwh_2_atmzonee.sales_productidenty1 as b 
      JOIN dwh_2_atmzonee.sales_productidenty2 as c
    ON a.sales_prd_code = b.sales_prd_code = c.sales_prd_code     
          )
 #SALES BY EMPLOYEE         
CREATE TABLE dwh_3_dimezone.product_salesbyemploye
as
(SELECT DISTINCT
	a.sales_trn_prd_code,
	a.emp_id,
    a.sales_point,
    b.sales_trn_amt,
    b.sales_trn_date

FROM dwh_2_atmzonee.sales_trn3_prdemp as a
      JOIN dwh_2_atmzonee.sales_trn2_prdamt  as b 
 
    ON a.sales_trn_prd_code = b.sales_trn_prd_code )
          
#SALE REFERNECE WITH AMT          
CREATE TABLE dwh_3_dimezone.product_salesref
as
(SELECT DISTINCT
	a.sales_trn_prd_code,
	a.sales_trn_ref,
    b.sales_trn_amt,
    b.sales_trn_date
FROM dwh_2_atmzonee.sales_trn1_prd as a
      JOIN dwh_2_atmzonee.sales_trn2_prdamt  as b 
 
    ON a.sales_trn_prd_code = b.sales_trn_prd_code )
          
#SALE BY EMPLOYEE WITH PRODUCT DESCRIPTION
CREATE TABLE dwh_3_dimezone.emp_output
as
(SELECT DISTINCT
	a.emp_id,
    a.emp_f_name,
    a.EMP_l_name,
    d.sales_prd_code,
    d.sales_prd_desc,
    c.sales_trn_amt,
    sales_trn_date,
    b.sales_point
    
FROM dwh_2_atmzonee.emp_name as a
JOIN dwh_2_atmzonee.sales_trn3_prdemp as b
ON a.EMP_ID = b.EMP_Id

JOIN dwh_2_atmzonee.sales_trn2_prdamt as c
ON b.sales_trn_prd_code = c.sales_trn_prd_code

JOIN dwh_2_atmzonee.sales_productidenty1 as d
ON b.sales_trn_prd_code= d.sales_prd_code
)
          

