(*
  type PtrType = ^BaseType

  var Ptr: PtrType;
      Base: BaseType;
      BaseVal: BaseType;

  Ptr := @Base;
  Ptr^ := BaseVal;
*)

program Pointers;

var
  N: Integer;
  NPtr: ^Integer;
  NAddr: ^Word; { An address is of type Word }

begin
  WriteLn('Enter an integer');
  ReadLn(N);

  NPtr := @N;
  WriteLn('N = ', NPtr^);
  NPtr^ := N + 1;
  WriteLn('N = ', NPtr^);
  WriteLn('N = ', N);

  NAddr := Addr(NPtr);
  WriteLn('NAddr = ', NAddr^);
end.
