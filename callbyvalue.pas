program CallByValue;

procedure Swap(A, B: Integer);
var
  Temp: Integer;
begin
  Temp := A;
  A := B;
  B := Temp;
end;

var
  X, Y: Integer;

begin
  WriteLn('Enter the first number');
  ReadLn(X);

  WriteLn('Enter the second number');
  ReadLn(Y);

  WriteLn('Before swap, x = ', X, ', y = ', Y);
  Swap(X, Y);
  WriteLn('After swap, x = ', X, ', y = ', Y);
end.
