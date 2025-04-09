create or replace trigger issue_trigger on insert or update on book_issue for reach row
begin
    v_bo