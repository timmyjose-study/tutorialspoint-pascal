program WhileLoop;

var
  a: Integer;

begin
  a := 10;

  while a < 20 do
    begin
      WriteLn(a);
      a := a + 1;
    end; { no end for while }
end.
