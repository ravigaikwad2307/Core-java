create or replace FUNCTION get_annual_salary(
    p_emp_id IN employees.employee_id%TYPE
    ) 
    RETURN number
IS 
    v_salary employees.salary%TYPE;
begin
        select salary 
        into v_salary
        from employees
        where  employee_id = p_emp_id;

        return v_salary*12;
end;

DECLARE
    annual_salary number;
BEGIN
    annual_salary := get_annual_salary(82);
    dbms_output.put_line('Annual salary of employee is ' ||annual_salary);
END;

select employee_id , GET_ANNUAL_SALARY(employee_id) from EMPLOYEES 
where employee_id = 82;
