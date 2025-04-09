create or replace package math_operations as
function add_numbers(num1 number,num2 number) return number;
procedure sub_numbers(num1 number, num2 number);
end math_operations;
/

create or replace package body math_operations as function add_numbers(num1 number,num2 number) return number is
begin
return num1+num2;
end add_numbers;
procedure sub_numbers(num1 number,num2 number) is 
begin
    dbms_output.put_line("the difference is: "|| (num1-num2));
end sub_numbers;
end math_operations;
/

declare
    n1 number;
    n2 number;
    res number;
begin
    n1:=&n1;
    n2:=&n2;

    res:=math_operations.add_numbers(n1,n2);
    dbms_output.put_line("the sum is: "|| res);
    math_operations.sub_numbers(n1,n2);
end;
/