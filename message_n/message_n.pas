program message_n;

const
    MESSAGE = 'Hello, World!';
    COUNT = 20;

var
    i: integer;

begin
    for i := 1 to COUNT do
        writeln(MESSAGE);
end.
