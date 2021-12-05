program TwoDimArray;

var
  A: array[0..3, 0..3] of Integer;
  I, J: Integer;

begin
  for I := 0 to 3 do
    for J := 0 to 3 do
      A[I, J] := I * J;

  for I := 0 to 3 do
    begin
      for J := 0 to 3 do
        Write(A[I, J], ' ');
      WriteLn;
    end;
end.
