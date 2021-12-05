program IncPtr;

const SIZE = 5;

var
  Arr: Array[1..SIZE] of Int64 = (10, 100, 20, 200, 30);
  I: Int64;
  IPtr: ^Int64;
  IAddr: ^Word = Nil;

begin
  IPtr := @Arr[1];

  for I := 1 to SIZE do
    begin
      IAddr := Addr(IPtr);
      WriteLn('Address of Arr[', I, '] = ', IAddr^);
      WriteLn('   Value of Arr[', I, '] = ', IPtr^);
      Inc(IPtr); 
    end;
end.

