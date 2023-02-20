program simple_sum;

var
    sum, count, number: longint;

begin
    sum := 0;
    count := 0;
    while not SeekEof do begin
        read(number);
        sum := sum + number;
        count := count + 1;
    end;

    writeln(count, ' ', sum);
end.
