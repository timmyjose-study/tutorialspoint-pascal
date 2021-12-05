program OpPrec;

var
  a, b, c, d: Integer;
  e: Real;

begin
  a := 20;
  b := 10;
  c := 15;
  d := 5;

  e := (a + b) * c / d;
  WriteLn(e:5:3);

  e := (a + b) * (c / d);
  WriteLn(e:5:3);

  e := a + (b * c) / d;
  WriteLn(e:5:3);
end.
