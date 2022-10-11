CREATE TABLE DWH_2_ATMZONEE.SALES_TRN1_PRD
AS
(SELECT
	a.sales_trn_prd_code,
    a.sales_trn_ref
    
FROM DWH_1_RAWZONE.RZ_S2T1 AS a
)
CREATE TABLE DWH_2_ATMZONEE.SALES_TRN2_prdamt
AS
(SELECT
	a.sales_trn_prd_code,
    a.sales_trn_amt,
    a.sales_trn_date

FROM DWH_1_RAWZONE.RZ_S2T1 AS a
)

CREATE TABLE DWH_2_ATMZONEE.SALES_TRN3_prdemp
AS
(SELECT
	a.sales_trn_prd_code,
    a.emp_id,
    a.sales_point
FROM DWH_1_RAWZONE.RZ_S2T1 AS a
)

