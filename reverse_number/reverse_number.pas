function do_reverse_number(number, tmp: longint): longint;
begin
    if number = 0 then
        do_reverse_number := tmp
    else
        do_reverse_number := do_reverse_number(number div 10, tmp * 10 + number mod 10);
end;

function reverse_number(number: longint): longint;
begin
    reverse_number := do_reverse_number(number, 0);
end;
