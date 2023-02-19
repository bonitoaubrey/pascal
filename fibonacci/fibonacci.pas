function fibonacci(number: integer): longint;
var
    i: integer;
    previous, current, result: longint;
begin
    if number <= 0 then begin
        fibonacci := 0;
        exit();
    end;

    current := 0;
    result := 1;

    for i := 2 to number do begin
        previous := current;
        current := result;
        result := previous + current;
    end;

    fibonacci := result;
end;
