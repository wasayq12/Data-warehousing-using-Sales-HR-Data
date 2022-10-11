#CREATING ATTENDANCE
CREATE TABLE dwh_3_dimezone.emp_attendance
as
(SELECT 
	a.emp_id,
    a.EMP_ATT_LOGIN_TME,
    a.emp_att_logout_tme, 
    b.emp_department,
    b.rec_upd_curr
    
FROM dwh_2_atmzonee.emp_attendance1 as a
      JOIN dwh_2_atmzonee.emp_depart as b 
          ON b.emp_id = a.emp_id
          )
#CREATING SALARY WITH ATTENDANCE
CREATE TABLE dwh_3_dimezone.emp_sal_attend
as
(SELECT 
	a.emp_id,
	b.emp_att_date,
    a.emp_curr_sal,
	a.emp_sal_per_hour,
	b.duration_hrs,
    a.rec_upd_curr
    
FROM dwh_2_atmzonee.emp_salary1 as a
    JOIN dwh_2_atmzonee.emp_attendance2 as b
        ON a.EMP_ID = b.EMP_ID    
           )


    
SELECT * from dwh_3_dimezone.emp_sal_attend

    
        
                    
          
          
          