program GotoDemo;

label mylabel; { labels must be declared before constants and variables in the given scope }

var
  a: Integer;

begin
  a := 10;

  mylabel:
    repeat
      if a = 15 then
        begin
          a := a + 1;
          goto mylabel;
        end;

      WriteLn(a);
      a := a + 1;
    until a = 20;
end.
