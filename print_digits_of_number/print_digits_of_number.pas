procedure print_digits_of_number(number: integer);

begin
    if number > 0 then begin
        print_digits_of_number(number div 10);
        write(number mod 10, ' ');
    end;
end;
