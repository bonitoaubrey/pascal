procedure read_longint(var success: boolean; var result: longint);
var
    c: char;
    res: longint;
    poss: integer;
begin
    res := 0;
    poss := 0;
    repeat
        read(c);
        poss := poss + 1;
    until (c <> ' ') and (c <> #10);

    while (c <> ' ') and (c <> #10) do begin
        if (c < '0') and (c > '9') then begin
            writeln('Unexpected ''''', c, ''''' in pos: ', poss);
            readln();
            success := false;
            exit();
        end;
        res := res * 10 + ord(c) - ord('0');
        read(c);
        poss := poss + 1;
    end;
    result := res;
    success := true;
end;

var
    x, y: longint;
    ok: boolean;
begin
    repeat
        write('Please type the first number: ');
        read_longint(ok, x);
    until ok;

    repeat
        write('Please type the second number: ');
        read_longint(ok, y);
    until ok;
    writeln(x, ' times ', y, ' is ', x * y);
end.
