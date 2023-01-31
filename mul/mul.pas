program mul;

var
    a, b: integer;

begin
    {$I-}
    read(a, b);
    if IOResult = 0 then
        writeln(a * b)
    else
        writeln('I couldn''t parse your input');
end.
