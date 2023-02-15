procedure quadratic(a, b, c: real;
                    var ok: boolean;
                    var x1, x2: real);
var
    d: real;
begin
    ok := false;
    if a = 0 then
        exit();
    d := b * b - 4 * a * c;
    if d < 0 then
        exit();
    d := sqrt(d);
    x1 := (-b - d) / (2 * a);
    x2 := (-b + d) / (2 * a);
    ok = true;
end;
