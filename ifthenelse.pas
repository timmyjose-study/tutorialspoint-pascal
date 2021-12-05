program IfThenElse;

var
  a: Integer;

begin
  a := 10;

  if a < 10 then
    WriteLn(a, ' < ', 10) { cannot have a semicolon here }
  else if a = 10 then
    WriteLn(a, ' = ', 10) { or here }
  else
    WriteLn(a, ' > ', 10);
end.
