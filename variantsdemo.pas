program VariantsDemo; 

{ variants can store almost any simple type that is determined at runtime }

type
  Color = (Red, Green, Blue);

var
  V: Variant;
  I: Integer;
  R: Real;
  C: Color;
  As: AnsiString;

begin
  I := 100;
  V := I;
  WriteLn('Variant as Integer: ', V);

  R := 2.78128;
  V := R;
  WriteLn('Variant as Real: ', V);

  C := Red;
  V := C;
  WriteLn('Variant as Color: ', V);

  As := 'Hello, world';
  V := As;
  WriteLn('Variant as Ansi String: ', V);
end.
