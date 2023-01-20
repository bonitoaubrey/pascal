program diamond_proc;

procedure print_spaces(count: integer);
var
    i: integer;

begin
    for i := 1 to count do
        write(' ');
end;

procedure print_line_of_diamond(count, half: integer);
begin
    print_spaces(half + 1 - count);
    write('*');
    if count > 1 then begin
        print_spaces(2 * count - 3);
        write('*');
    end;
    writeln();
end;

var
    half, i, height: integer;

begin
    repeat
        write('Enter the diamond''s height (possitive odd): ');
        read(height);
    until (height > 0) and (height mod 2 = 1);

    half := height div 2;
    for i := 1 to half + 1 do
        print_line_of_diamond(i, half);
    for i := half downto 1 do
        print_line_of_diamond(i, half);
end.
