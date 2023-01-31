program diamond;

var
    half, j, height, i: integer;

begin
    repeat
        write('Enter the diamond''s height (possitive odd): ');
        readln(height);
    until (height > 0) and (height mod 2 = 1);

    half := height div 2;

    for j := 1 to half + 1 do begin
        for i := 1 to half + 1 - j do
            write(' ');
        write('*');
        if j > 1 then begin
            for i := 1 to 2 * j - 3 do
                write(' ');
            write('*');
        end;
        writeln();
    end;

    for j := half downto 1 do begin
        for i := 1 to half + 1 - j do
            write(' ');
        write('*');
        if j > 1 then begin
            for i := 1 to 2 * j - 3 do
                write(' ');
            write('*');
        end;
        writeln();
    end;
end.
