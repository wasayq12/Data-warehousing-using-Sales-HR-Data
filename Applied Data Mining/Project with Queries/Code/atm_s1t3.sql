SELECT * from dwh_1_rawzone.rz_s1t3

CREATE TABLE DWH_2_atmZONEE.emp_SALARY2
AS
(SELECT
	a.Emp_ID,
    a.EMP_SALARY,
    a.EMP_EXTRA_ALLOWANCE
FROM DWH_1_RAWZONE.RZ_S1T3 AS a
)
CREATE TABLE DWH_2_ATMZONEE.totalSALARY3
AS
(SELECT
	a.emp_id,
    a.emp_sal_dis_amt,
    a.emp_sal_dis_date
		
FROM DWH_1_RAWZONE.RZ_S1T3 AS a
)
