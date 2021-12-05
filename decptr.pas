program DecPtr;

const SIZE = 5;

var
  Arr: Array[1..SIZE] of Int64 = (10, 100, 20, 200, 30);
  I: Int64;
  IPtr: ^Int64;
  IAddr: ^Word;

begin
  IPtr := @Arr[SIZE];

  for I := SIZE downto 1 do
    begin
      IAddr := Addr(IPtr);
      WriteLn('Address of Arr[', I, '] = ', IAddr^);
      WriteLn('   Value of Arr[', I, '] = ', IPtr^);
      Dec(IPtr);
    end;
end.
