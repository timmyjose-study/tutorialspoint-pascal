program MultiDimArray;

type
  Matrix = array[1..2, 1..3] of Integer;

var
  M: Matrix;
  I, J: Integer;

begin
  for I := 1 to 2 do
    for J := 1 to 3 do
      begin
        WriteLn('Enter element');
        ReadLn(M[I, J]);
      end;

  for I := 1 to 2 do
    begin
      for J := 1 to 3 do
        Write(M[I, J], ' ');
      WriteLn;
    end;
end.
