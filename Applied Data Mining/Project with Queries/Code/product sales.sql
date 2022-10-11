#PRODUCT COSTING
CREATE TABLE dwh_3_dimezone.product_costing
as
(
select DISTINCT

	a.sales_prd_code,
    b.sales_prd_desc,
    a.prd_cost,
    c.prd_imp_marker,
    a.prd_opex_cost

FROM dwh_2_atmzonee.sales_productcosting as a
JOIN dwh_2_atmzonee.sales_productidenty1 as b
JOIN dwh_2_atmzonee.sales_productidenty2 as c
ON a.sales_prd_code = b.sales_prd_code = c.sales_prd_code
)

#PRODUCT SOLD FROM WHICH PLACE
CREATE TABLE dwh_3_dimezone.prd_salespoint
as
(Select DISTINCT
    a.sales_point,
	a.emp_id,
    b.sales_prd_code,
    b.sales_prd_desc,
    b.prd_cost,
    b.prd_imp_marker,
    b.prd_opex_cost

FROM dwh_2_atmzonee.sales_trn3_prdemp as a
JOIN dwh_3_dimezone.product_costing as b

ON a.sales_trn_prd_code = b.sales_prd_code
)

select * from dwh_3_dimezone.prd_salespoint
WHERE EMP_ID = 'EMP_22' AND sales_point='CABIN'

SELECT * from dwh_3_dimezone.emp_output
