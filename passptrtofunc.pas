program PassingPointersToPrograms;

type
  IPtr = ^Integer;

procedure ReadNumber(const Ptr: IPtr);
var
  Temp: Integer;

begin
  ReadLn(Temp);
  Ptr^ := Temp;
end;

var
  N: Integer;

begin
  ReadNumber(@N);
  WriteLn('You entered ', N);
end.
