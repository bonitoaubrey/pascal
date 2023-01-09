program message_n;

const
    message = 'Hello, World!';
    count = 20;

var
    i: integer;

begin
    for i := 1 to count do
        writeln(message);
end.
