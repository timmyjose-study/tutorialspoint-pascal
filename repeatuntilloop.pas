program RepeatUntilLoop;

var
  a: Integer;

begin
  a := 1;

  repeat
    WriteLn(a);
    a := a + 1;
  until a > 10;
end.

