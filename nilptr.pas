program NilPtr;

var
  S: String;
  SPtr: ^String = Nil;
  SAddr: ^Word;

begin
  WriteLn('Enter some string');
  ReadLn(S);

  if SPtr <> Nil then
    WriteLn('Yeehaa');

  SPtr := @S;
  WriteLn('SPtr^ = ', SPtr^);

  if SPtr <> Nil then
    WriteLn('Woohoo!');

  SAddr := Addr(SPtr);
  WriteLn(SAddr^);
end.

