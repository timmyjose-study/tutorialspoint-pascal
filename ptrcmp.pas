program PtrCmp;

const SIZE = 5;

var
  Arr: Array[1..SIZE] of Int64 = (10, 100, 20, 300, 30);
  I: Int64 = 1;
  IPtr: ^Int64 = Nil;
  IAddr: ^Word = Nil;

begin
  IPtr := @Arr[1];

  while IPtr <= @Arr[SIZE] do
    begin
      IAddr := Addr(IPtr);
      WriteLn('Address of Arr[', I, '] = ', IAddr^);
      WriteLn('   Value of Arr[', I, '] = ', IPtr^);
      Inc(IPtr);
      I := I + 1;
    end;
end.
