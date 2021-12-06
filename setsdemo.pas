program SetsDemo;

type 
  Color = (Red, Blue, Yellow, Green, White, Black, Orange);
  Colors = set of Color;

procedure DisplayColors(C: Colors);
const
  Names : array[Color] of String = ('Red', 'Blue', 'Yellow', 'Green', 'White', 'Black', 'Orange');

var
  Cl: Color;
  S: String;

begin
  S := '';
  for Cl := Red to Orange do
    if Cl in C then
      begin
        if S <> '' then
          S := s + ', ';
          S := S + Names[Cl];
      end;
  WriteLn('[', S, ']');
end;

var
  C: Colors;

begin
  C := [Red, Blue, Yellow, Green, White, Black, Orange]; { set constructor }
  DisplayColors(C);

  C := [Red, Blue] + [Yellow, Green];
  DisplayColors(C);

  C := [Red, Blue, Yellow, Green, White, Black, Orange] - [Green, White];
  DisplayColors(C);

  C := [Red, Blue, Yellow, Green, White, Black, Orange] * [Green, White];
  DisplayColors(C);

  C := [Red, Blue, Yellow, Green] >< [Yellow, Green, White, Black];
  DisplayColors(C);
end.
