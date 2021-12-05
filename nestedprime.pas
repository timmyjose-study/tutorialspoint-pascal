program NestedPrime;

var
  i, j: Integer;

begin
  for i := 2 to 50 do
    begin
      for j := 2 to i do
        if i mod j = 0 then
          break;

      if i = j then
        WriteLn(i, ' is prime');
    end;
end.

