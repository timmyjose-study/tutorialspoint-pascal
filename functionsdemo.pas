program FunctionsDemo;

function Max(Num1, Num2: Integer): Integer;
var
  Result: Integer;
begin
  if Num1 >= Num2 then
    Result := Num1
  else
    Result := Num2;
  Max := result;
end;

function Min(Num1, Num2: Integer): Integer;
var
  Result: Integer;

begin
  if Num1 <= Num2 then
    Result := Num1
  else
    Result := Num2;
  min := result;
end;

function MaxAgain(Num1, Num2: Integer): Integer;
begin
  if Num1 >= Num2 then
    MaxAgain := Num1
  else
    MaxAgain := Num2
end;

var
  a, b: Integer;

begin
  a := 10;
  b := 20;

  WriteLn(Max(a, b));
  WriteLn(Min(a, b));
  WriteLn(MaxAgain(a, b));
end.