program BooleanDemo;

var
  exit: Boolean;
  choice: Char;

begin
  WriteLn('Do you wish to continue? [Y/y][N/n]');
  ReadLn(Choice);

  case Choice of
    'N', 'n': exit := true
  else
    exit := false
  end;

  if exit then
    WriteLn('Good Bye!')
  else
    WriteLn('Please continue');
end.
