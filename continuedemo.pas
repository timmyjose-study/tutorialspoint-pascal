program ContinueDemo;

var
  a: Integer;

begin
  a := 10;

  repeat { repeat does not need any explicit begin-end blocks }
    if a = 15 then
      begin
        a := a + 1;
        continue;
      end;

    WriteLn(a);
    a := a + 1;
  until a = 20;
end.
