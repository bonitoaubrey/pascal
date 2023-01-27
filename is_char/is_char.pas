function is_char(ch: char): boolean;
begin
    is_char :=
        ((ch >= 'A') and (ch <= 'Z')) or
        ((ch >= 'a') and (ch <= 'z'));
end;
