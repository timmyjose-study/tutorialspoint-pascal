program VarScope;

var
  A, B, C: Integer; { local wrt VarScope, global wrt to DisplaySum }

procedure DisplaySum;
var
  A, B, C: Integer;
begin
  A := 10;
  B := 20;
  C := 30;

  WriteLn('[DisplaySum] ', A, ' + ', B, ' + ', C, ' = ', A + B + C);
end;

begin
  A := 1;
  B := 2;
  C := 3;

  DisplaySum;
  WriteLn('[Main Block] ', A, ' + ', B, ' + ', C, ' = ', A + B + C);
end.

