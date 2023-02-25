program olympiad_counter;

const
    MAX_SCHOOL = 67;
    MAX_GROUP = 100;

type
    Counters_Array = array [1..MAX_SCHOOL] of integer;

var
    Counters: Counters_Array;
    i, c, n: integer;

begin
    for i := 1 to MAX_SCHOOL do
        Counters[i] := 0;

    {$I-}
    while not eof do begin
        readln(c);
        if IOResult <> 0 then begin
            writeln('Incorrect data');
            halt(1);
        end;
        n := c div MAX_GROUP;
        if (n < 1) or (n > MAX_GROUP) then begin
            writeln('Illegal school id: ', n, '[', c, ']');
            halt(1);
        end;
        Counters[n] := Counters[n] + 1;
    end;

    n := 1;
    for i := 2 to MAX_SCHOOL do
        if Counters[i] > Counters[n] then
            n := i;

    for i := 1 to MAX_SCHOOL do
        if Counters[i] = Counters[n] then
            writeln(i);
end.
