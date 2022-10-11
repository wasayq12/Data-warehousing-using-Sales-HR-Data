# EMPLOYEE FINANCE RATE
CREATE TABLE dwh_3_dimezone.employeefinancing
as
(SELECT  
	a.emp_id,
    b.emp_fin_prd,
	a.EMP_FINANCING_AMT
	
FROM dwh_2_atmzonee.emp_finance1 as a
      JOIN dwh_2_atmzonee.emp_finance2 as b 
    ON a.EMP_ID = b.emp_id     
    where EMP_financing_amt > 0
          )
# EMPLOYEE FINANCIN RATE CONTINUED
CREATE TABLE dwh_3_dimezone.employee_financing_rate
as
(SELECT  
	a.emp_id,
    a.emp_fin_prd,
	a.EMP_FINANCING_AMT,
	b.emp_fin_rate
FROM dwh_3_dimezone.employeefinancing as a
      JOIN dwh_2_atmzonee.emp_finance3salar as b 
    ON a.EMP_ID = b.emp_id     
          )

#CREATING EMPLOYEE FINANCES
CREATE TABLE dwh_3_dimezone.employee_finances
as
(SELECT  
	a.emp_id,
    b.emp_salary,
    a.emp_profun_perc

FROM dwh_2_atmzonee.emp_finance1 as a
      JOIN dwh_2_atmzonee.emp_finance3salar as b 
    ON a.EMP_ID = b.emp_id     
          )
          
#CREATING TOTAL FINANCES
CREATE TABLE dwh_3_dimezone.employee_Totalfinances
as
(SELECT  
	a.emp_id,
    a.emp_fin_prd,
    a.emp_financing_amt,
    a.emp_fin_rate,
    b.emp_salary,
    b.emp_profun_perc

FROM dwh_3_dimezone.employee_financing_rate as a
      JOIN dwh_3_dimezone.employee_finances as b 
    ON a.EMP_ID = b.emp_id     
          )
  
 

SELECT * FROM dwh_3_dimezone.employee_Totalfinances

          
          