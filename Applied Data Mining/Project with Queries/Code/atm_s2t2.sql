CREATE TABLE DWH_2_ATMZONEE.SALES_PRODUCTidenty1
AS
(SELECT
		a.sales_prd_code,
        a.sales_prd_desc
FROM DWH_1_RAWZONE.RZ_S2T2 AS a
)

CREATE TABLE DWH_2_ATMZONEE.SALES_PRODUCTidenty2
AS
(SELECT
		a.sales_prd_code,
        a.PRD_IMP_MARKER


FROM DWH_1_RAWZONE.RZ_S2T2 AS a
)

CREATE TABLE DWH_2_ATMZONEE.SALES_PRODUCTcosting
AS
(SELECT
		a.sales_prd_code,
        a.prd_cost,
        a.prd_opex_cost
FROM DWH_1_RAWZONE.RZ_S2T2 AS a
)


