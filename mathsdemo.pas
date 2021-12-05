program MathsDemo;

function Add(Num1, Num2: Integer): Integer;
begin
  Add := Num1 + Num2;
end;

function Sub(Num1: Integer; Num2: Integer): Integer;
var
  Result: Integer;

begin
  Result := Num1 - Num2;
  Sub := Result;
end;

procedure Mul(Num1, Num2: Integer; var Prod: Integer);
begin
  Prod := Num1 * Num2;
end;

procedure Divide(Num1, Num2: Integer; var Quot: Real);
begin
  Quot := Num1 / Num2;
end;

var
  A, B, Prod: Integer;
  Quot: Real;

begin
  A := 20;
  B := 3;

  WriteLn(A, ' + ', B, ' = ', Add(A, B));
  WriteLn(A, ' - ', B, ' = ', Sub(A, B));
  Mul(A, B, Prod);
  WriteLn(A, ' * ', B, ' = ', Prod);
  Divide(A, B, Quot);
  WriteLn(A, ' / ' , B, ' = ' , Quot:5:3);
end.
