--Implicit cursor
BEGIN
    for rec IN (select employee_id , salary from EMPLOYEES) LOOP
        dbms_output.PUT_LINE(rec.employee_id || ' - ' || rec.salary);
    end loop;
END;

BEGIN
    UPDATE EMPLOYEES
    SET salary = salary + 10000
    where JOB_TITLE = 'Stock Clerk' ;

    IF SQL%ROWCOUNT = 0 THEN
    dbms_output.PUT_LINE('No rows affected');
    ELSE
    dbms_output.PUT_LINE(SQL%ROWCOUNT || ' Rows affected');
    END IF;
END;


--Explicit cursor
declare
    CURSOR emp_cur IS
        select EMPLOYEE_ID, SALARY
        from EMPLOYEES;

    v_employee_id EMPLOYEES.EMPLOYEE_ID%TYPE;
    v_salary      EMPLOYEES.SALARY%TYPE;

BEGIN
    OPEN emp_cur;
    LOOP
        FETCH emp_cur INTO v_employee_id,v_salary;
        dbms_output.put_line(v_employee_id || ' ' || v_salary);
        EXIT WHEN emp_cur%NOTFOUND;
    END LOOP;

    CLOSE emp_cur;
END;
