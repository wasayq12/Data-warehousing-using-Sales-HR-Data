#CREATING SALARY

CREATE TABLE dwh_3_dimezone.emp_salary
as
(SELECT 
	a.emp_id,
    b.emp_lst_sal,
    b.emp_expected_sal,
	a.emp_curr_sal
    
FROM dwh_2_atmzonee.emp_salary1 as a
      JOIN dwh_2_atmzonee.emp_salary2 as b 
          
          ON b.emp_id = a.emp_id 
          )

#CREATING TOTAL SALARY
CREATE TABLE dwh_3_dimezone.emp_totalsalary
as
(SELECT DISTINCT 
	a.emp_id,
    a.emp_lst_sal,
    a.emp_expected_sal,
	a.emp_curr_sal,
	b.EMP_EXTRA_ALLOWANCE,
	b.emp_sal_dis_amt
    
FROM dwh_3_dimezone.emp_salary as a
        JOIN dwh_2_atmzonee.emp_salary3 as b 
			ON b.emp_id = a.emp_id 
          )          




Select * from dwh_3_dimezone.emp_totalsalary