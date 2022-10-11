
CREATE TABLE dwh_2_atmzonee.emp_depart
as
(SELECT 
		a.emp_id,
        a.emp_department,
        a.rec_upd_curr
        
from dwh_1_rawzone.rz_s1t1 as a
)

CREATE TABLE dwh_2_atmzonee.emp_identity
as
(SELECT 
		a.emp_id,
        a.emp_DOB,
        a.emp_CNIC,
        a.rec_upd_curr
from dwh_1_rawzone.rz_s1t1 as a
)
CREATE TABLE dwh_2_atmzonee.emp_family1
as
(SELECT 
		a.emp_id,
        a.emp_mothr_name
        
from dwh_1_rawzone.rz_s1t1 as a
)

CREATE TABLE dwh_2_atmzonee.emp_marital
as
(SELECT 
		a.emp_id,
        a.emp_marital_st,
        a.emp_child,
        a.rec_upd_curr
from dwh_1_rawzone.rz_s1t1 as a
)


CREATE TABLE dwh_2_atmzonee.emp_salary1
as
(SELECT 
		a.emp_id,
        emp_curr_sal,
        a.emp_sal_per_hour,
        a.rec_upd_curr
        
        
from dwh_1_rawzone.rz_s1t1 as a
)

CREATE TABLE dwh_2_atmzonee.emp_finance1
as
(SELECT 
		a.emp_id,
        a.EMP_FINANCING_AMT,
        a.emp_profun_perc,
        a.rec_upd_curr
        
from dwh_1_rawzone.rz_s1t1 as a
)
CREATE TABLE dwh_2_atmzonee.emp_cost
as
(SELECT 
		a.emp_id,
        a.emp_cap_cost
        
from dwh_1_rawzone.rz_s1t1 as a
)
CREATE TABLE dwh_2_atmzonee.emp_salary2
as
(SELECT 
		a.emp_id,
        a.EMP_LST_SAL,
		a.emp_expected_sal,
        a.rec_upd_curr
			
from dwh_1_rawzone.rz_s1t1 as a
)


select * from dwh_1_rawzone.rz_s1t1