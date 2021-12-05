program ProceduresDemo;

procedure FindMin(Num1, Num2: Integer; var MinVal: Integer);
begin
  if Num1 <= Num2 then
    MinVal := Num1
  else
    MinVal := Num2
end;

procedure FindMax(Num1, Num2: Integer; var MaxVal: Integer);
begin
  if Num1 >= Num2 then
    MaxVal := Num1
  else
    MaxVal := Num2
end;

var 
  A, B, Min, Max: Integer;

begin
  A := 10;
  B := 20;
  FindMin(A, B, Min);
  FindMax(A, B, Max);
  WriteLn(Min, ' ', Max);
end.
