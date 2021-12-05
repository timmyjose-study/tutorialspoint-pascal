program WhileWithoutBegin;

var
  c: Integer;

begin
  c := 1;

  while c < 10 do
    c := c + 1;
  WriteLn(c);
end.
