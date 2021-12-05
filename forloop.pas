program ForLoop;

var
  a: Integer;

begin
  for a := 1 to 10 do
    begin
      WriteLn('Hello, ', a);
    end;

  for a := 10 downto 0 do
    begin
      WriteLn(a);
    end;
end.
