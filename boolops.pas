program BoolOps;

var
  a, b: Boolean;

begin
  a := true;
  b := false;

  WriteLn(a, ' and ', b, ' is ', a and b);
  WriteLn(a, ' or ', b, ' is ', a or b);
  WriteLn(a, ' xor ', b, ' is ', a xor b);
  WriteLn('not ', a, ' is ', not a);
  WriteLn('not ', b, ' is ', not b);
end.
