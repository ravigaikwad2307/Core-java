DECLARE
    v_salary employees.salary%TYPE;
    e NUMBER;
BEGIN
    select salary
    into v_salary
    from employees
    where employee_id = &e;

    dbms_output.put_line('Employee id' || e || ' salary: ' || v_salary );

    EXCEPTION
    WHEN no_data_found then
        dbms_output.PUT_LINE('Employee not exist');
END;
