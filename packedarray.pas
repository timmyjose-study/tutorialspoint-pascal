program PackedArray;

type
  PackedMat = packed Array[0..3, 0..3] of Integer; { bit-packed }

var
  M: PackedMat;
  I, J: Integer;

begin
  for I := 0 to 3 do
    for J := 0 to 3 do
      M[I, J] := I * J;

  for I := 0 to 3 do
    begin
      for J := 0 to 3 do
        Write(M[I, J], ' ');
      WriteLn;
    end;
end.
