CREATE TABLE DWH_2_ATMZONEE.emp_attendance1
as
(SELECT
		a.Emp_id,
		a.EMP_ATT_LOGIN_TME,
        a.EMP_ATT_LOGOUT_TME
FROM dwh_1_rawzone.rz_s1t4 as a
)

CREATE TABLE DWH_2_ATMZONEE.emp_attendance2
as
(SELECT
		a.emp_id,
		a.emp_att_date,
        a.duration_hrs
FROM dwh_1_rawzone.rz_s1t4 as a
)


