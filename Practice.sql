declare
    CURSOR c_emp is
        select EMPLOYEE_ID,FIRST_NAME,SALARY from EMPLOYEES;
    v_emp c_emp%rowtype;

BEGIN
    OPEN c_emp;
    LOOP
        FETCH c_emp INTO v_emp;
        EXIT when c_emp%NOTFOUND;
        dbms_output.put_line(v_emp.EMPLOYEE_ID || ' ' || v_emp.FIRST_NAME || ' ' || v_emp.SALARY);
        end LOOP;
        close c_emp;
END;






CREATE or REPLACE function get_supplier_invoice_total( p_supplier_id NUBMER)
        return NUBMER is
        v_total NUBMER;
BEGIN
    select NVL(SUM(invoice_amout),0)
    into v_total
    from ap_invoices_all
    where vendor_id = p_supplier_id;

    RETURN v_total;
EXCEPTION 
    when OTHERS THEN
    return 0;

END;


CREATE or REPLACE PROCEDURE insert_supplier(
    p_supplier_id NUMBER,
    p_supplier_name VARCHAR2
) IS

BEGIN
    INSERT INTO suppliers
    VALUES (p_supplier_id,p_supplier_name);

    COMMIT;

EXCEPTION
    WHEN dup_val_on_index THEN
    dbms_output.put_line('Supplier already exist');

    WHEN OTHERS then
    dbms_output.put_line(SQLERRM);

END;
