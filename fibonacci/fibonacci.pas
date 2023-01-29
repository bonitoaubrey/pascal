function fibonacci(number: integer): longint;
var
    i: integer;
    previous, current, res: longint;
begin
    if number <= 0 then begin
        fibonacci := 0;
        exit();
    end;

    current := 0;
    res := 1;

    for i := 2 to number do begin
        previous := current;
        current := res;
        res := previous + current;
    end;

    fibonacci := res;
end;
