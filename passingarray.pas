program PassingArray;

const SIZE = 5;

type
  Arr5 = Array [1..SIZE] of Integer;

var
  Balance: Arr5 = (1000, 2, 3, 17, 50); { we can initialise an array like so }

function CalculateAverage(Arr: Arr5): Real;
var
  Sum: Real = 0.0;
  I: Integer;
begin
  for I := 1 to SIZE do
    Sum := Sum + Arr[I];

  CalculateAverage := Sum / SIZE;
end;

begin
  WriteLn(CalculateAverage(Balance):5:3);
end.
