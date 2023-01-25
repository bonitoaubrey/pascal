program message_n;

const
    MESSAGE: string = 'Hello, World!';
    COUNT: integer = 6;

var
    i: integer;

begin
    for i := 1 to COUNT do
        writeln(MESSAGE);
end.
