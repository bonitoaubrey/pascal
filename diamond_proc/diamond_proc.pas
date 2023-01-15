program diamond_proc;

procedure print_spaces(count: integer);
var
    i: integer;

begin
    for i := 1 to count do
        write(' ');
end;

procedure print_line_of_diamond(k, n: integer);
begin
    print_spaces(n + 1 - k);
    write('*');
    if k > 1 then begin
        print_spaces(2 * k - 3);
        write('*');
    end;
    writeln();
end;

var
    n, k, h: integer;

begin
    repeat
        write('Enter the diamond''s height (possitive odd): ');
        read(h);
    until (h > 0) and (h mod 2 =1);

    n := h div 2;
    for k := 1 to n + 1 do
        print_line_of_diamond(k, n);
    for k := n downto 1 do
        print_line_of_diamond(k, n);
end.
