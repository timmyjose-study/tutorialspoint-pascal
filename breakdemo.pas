program BreakDemo;

var
  a: Integer;

begin
  a := 10;

  while a < 20 do
    begin
      WriteLn(a);
      a := a + 1;

      if a > 15 then
        break;
    end;
end.

