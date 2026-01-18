create or replace PACKAGE emp_pkg IS
    PROCEDURE update_salaries(p_emp_id employees.employee_id%TYPE,p_hike NUMBER);
    FUNCTION get_annual_salaries(p_emp_id employees.employee_id%TYPE) return NUMBER;
END emp_pkg;


CREATE OR REPLACE PACKAGE BODY emp_pkg AS

    PROCEDURE update_salaries(
        p_emp_id IN employees.employee_id%TYPE,
        p_hike   IN NUMBER 
    ) IS
        v_salary employees.salary%TYPE;
    BEGIN
        -- Update the record
        UPDATE employees
        SET salary = salary + p_hike
        WHERE employee_id = p_emp_id;
        
        -- Fetch the new salary to display
        SELECT salary
        INTO v_salary
        FROM employees
        WHERE employee_id = p_emp_id;

        DBMS_OUTPUT.PUT_LINE('Updated salary of employee id : ' || p_emp_id || ' is ' || v_salary);
    END update_salaries;

    FUNCTION get_annual_salaries(
        p_emp_id IN employees.employee_id%TYPE
    ) RETURN NUMBER IS 
        v_salary employees.salary%TYPE;
    BEGIN
        SELECT salary 
        INTO v_salary
        FROM employees
        WHERE employee_id = p_emp_id;

        RETURN v_salary * 12;
    END get_annual_salaries;

END emp_pkg;
/
