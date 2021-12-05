program RelOps;

var
  a, b: Integer;

begin
  a := 21;
  b := 10;

  if a = b then
     WriteLn(a, ' = ', b)
  else
    WriteLn(a, ' <> ', b);
  
  if a < b then
    WriteLn(a, ' < ', b);
  
  if a > b then
    WriteLn(a, ' > ', b);

  a := 5;
  b := 20;

  if a <= b then
    WriteLn(a, ' <= ', b);

  if a >= b then
    WriteLn(a, ' >= ', b);
end.
