   
BEGIN
   update_salary(82,10000);
END;

create or replace PROCEDURE update_salary(
    p_emp_id IN employees.employee_id%TYPE,
    p_hike   IN NUMBER 
) IS
    v_salary NUMBER;
BEGIN
    update employees
    set salary = salary + p_hike
    where employee_id = p_emp_id;
    
    select salary
    into v_salary
    from EMPLOYEES
    where employee_id = p_emp_id;
    dbms_output.PUT_LINE('Updated salary of employee id : ' ||p_emp_id || ' is '||v_salary);

END;
