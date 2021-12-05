program BitOps;

var
  a, b, c: Integer;

begin
  a := 60;
  b := 13;
  c := 2;

  WriteLn(a, ' & ', b, ' is ', a and b);
  WriteLn(a, ' | ', b, ' is ', a xor b);
  WriteLn(a, ' ! ', b, ' is ', a or b);
  WriteLn(a, ' << ', c, ' is ', a << c);
  WriteLn(a, ' >> ', c, ' is ', a >> c);
  WriteLn('! a', ' is ', not a);
  WriteLn('! b', ' is ', not b);
end.
