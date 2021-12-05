program PointerToPointer;

type
  IPtr = ^Integer;
  PtrIPtr = ^IPtr; { ^^Integer is not possible, unfortunately }

var
  N: Integer;
  P1: IPtr;
  A1: ^Word;
  P2: PtrIPtr;
  A2: ^Word;

begin
  WriteLn('Enter an integer');
  ReadLn(N);

  P1 := @N;
  A1 := Addr(P1);
  P2 := @P1;
  A2 := Addr(P2);

  WriteLN('Addr(P1) = ', A1^, ', Addr(P2) = ', A2^);
  WriteLn('N = ', N, ', P1^ = ', P1^, ', P2^^ = ', P2^^);
  P1^ := 50;
  WriteLn('N = ', N, ', P1^ = ', P1^, ', P2^^ = ', P2^^);
  P2^^ := 100;
  WriteLn('N = ', N, ', P1^ = ', P1^, ', P2^^ = ', P2^^);
end.
