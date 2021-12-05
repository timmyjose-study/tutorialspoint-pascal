program ArrayDemo;

var
  N: array[1..10] of Integer;
  I, J: Integer;

begin
  for I := 1 to 10 do
    N[I] := I + 100;

  for J := 1 to 10 do
    WriteLn(N[J]);
end.
