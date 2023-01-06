program age;

var
    year: integer;

begin
    write('Please type in your birth year: ');
    readln(year);

    while (year < 1900) or (year > 2020) do begin
        writeln(year, ' is not a valid year!');
        write('Please write again: ');
        readln(year);
    end;

    writeln('The year ', year, ' is accepted. Thank you!');
end.
