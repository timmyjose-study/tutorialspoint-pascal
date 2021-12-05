program ArrOfPtrs;

const SIZE = 5;

var
  Arr: Array[1..SIZE] of Integer = (10, 100, 20, 200, 30);
  I: Integer;
  PtrArr: Array[1..SIZE] of ^Integer = (Nil, Nil, Nil, Nil, Nil);

begin
  for I := 1 to SIZE do
    PtrArr[I] := @Arr[I];

  for I := 1 to SIZE do
    WriteLn(PtrArr[I]^);
end.
