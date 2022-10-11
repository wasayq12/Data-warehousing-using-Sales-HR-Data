#CREATING PARENTS
CREATE TABLE dwh_3_dimezone.emp_parents
as
(SELECT 
	a.emp_id,
	a.emp_mothr_name,
    b.emp_fathr_name
    
FROM dwh_2_atmzonee.emp_family1 as a
      JOIN dwh_2_atmzonee.family2 as b 
          ON b.emp_id = a.emp_id
          )
# CREATING MARITAL          
CREATE TABLE dwh_3_dimezone.emp_marital
as
(SELECT 
	a.emp_id,
	a.emp_marital_st,
    a.emp_child,
    b.emp_next_kin,
    rec_upd_curr
    
FROM dwh_2_atmzonee.emp_marital as a
      JOIN dwh_2_atmzonee.family2 as b 
          ON b.emp_id = a.emp_id
          )

#CREATING PERSONAL          
CREATE TABLE dwh_3_dimezone.emp_personal
as
(SELECT 
	a.emp_id,
	b.emp_f_name,
    b.emp_l_name,
    a.emp_DOB,
    a.emp_CNIC,
#    c.emp_department,
    a.rec_upd_curr
FROM dwh_2_atmzonee.emp_identity as a
      JOIN dwh_2_atmzonee.emp_name as b
		#JOIN dwh_2_atmzonee.emp_depart as c
          ON b.emp_id = a.emp_id #= c.emp_id
)
#CREATING EMPLOYEE COMPANY DATA
CREATE TABLE dwh_3_dimezone.emp_employee_data
as
(SELECT 
	a.emp_id,
	a.emp_f_name,
    a.emp_l_name,
    a.emp_DOB,
    a.emp_CNIC,
	b.emp_department,
    a.rec_upd_curr
FROM dwh_3_dimezone.emp_personal as a
      JOIN dwh_2_atmzonee.emp_depart as b 
          ON b.emp_id = a.emp_id
          )

			
select * from dwh_3_dimezone.employee_data