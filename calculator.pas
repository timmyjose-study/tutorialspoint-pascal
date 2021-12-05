program Calculator;

var
  a, b, c: Integer;
  d: Real;

begin
  a := 21;
  b := 10;
  c := a + b;
  WriteLn(c);

  c := a - b;
  WriteLn(c);

  c := a * b;
  WriteLn(c);

  d := a / b;
  WriteLn(d);

  c := a div b;
  WriteLn(c);

  c := a mod b;
  WriteLn(c);
end.
