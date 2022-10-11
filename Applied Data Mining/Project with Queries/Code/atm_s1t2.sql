CREATE TABLE dwh_2_atmzonee.finance2
as
(
SELECT 
	a.emp_ID,
    a.emp_fin_prd,
    a.emp_fin_start_dt
FROM dwh_1_rawzone.rz_s1t2 as a
)

CREATE TABLE dwh_2_atmzonee.finance3salar
as
(
SELECT 
	a.emp_ID,
    a.emp_fin_rate,
    a.emp_salary
FROM dwh_1_rawzone.rz_s1t2 as a
)

CREATE TABLE dwh_2_atmzonee.family2
as
(
SELECT 
	a.emp_ID,
    a.emp_fathr_name,
    a.emp_next_kin
FROM dwh_1_rawzone.rz_s1t2 as a
)




SELECT * FROM dwh_1_rawzone.rz_s1t2