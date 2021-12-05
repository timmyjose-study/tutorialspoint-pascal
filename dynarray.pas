program DynArray;

var
  A: Array of Array of Integer; { dynamic array }
  I, J: Integer;

begin
  SetLength(A, 6, 6); { needed for dynamic arrays }
  
  for I := 0 to 5 do
    for J := 0 to 5 do
      A[I, J] := I * J;

  for I := 0 to 5 do
    begin
      for J := 0 to 5 do
        Write(A[I, J], ' ');
      WriteLn;
    end;
end.
