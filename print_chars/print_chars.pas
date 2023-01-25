procedure print_chars(ch: char; count: integer);

begin
    if count > 0 then begin
        write(ch);
        print_chars(ch, count - 1);
    end;
end;
