DECLARE
    TYPE emp_tab is table of employees%rowtype;
    l_emp emp_tab;
begin
    select * bulk collect into l_emp from EMPLOYEES where manager_id = 23;
    for i in 1..l_emp.count LOOP
    dbms_output.PUT_LINE(l_emp(i).employee_id || ' ' || l_emp(i).first_name);
    end loop;
end;

DECLARE
    type emp_id_tab is table of employees.EMPLOYEE_ID%TYPE;
    emp_id emp_id_tab := emp_id_tab(41,42,43);
BEGIN
    forall i in emp_id.first .. emp_id.last 
        update EMPLOYEES
        set salary = salary + 10000
        where employee_id = emp_id(i);
END;
