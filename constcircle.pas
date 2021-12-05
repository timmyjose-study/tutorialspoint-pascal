program ConstCircle;

const 
  PI = 3.141592654;

var
  Radius, Diameter, Circumference: Real;

begin
  WriteLn('Enter the radius of the circle');
  ReadLn(Radius);

  Diameter := 2.0 * Radius;
  Circumference := 2.0 * PI * Radius;
  WriteLn('For a circle of radius ', Radius:5:2, ', diameter = ', Diameter:5:2, ', and circumference = ', Circumference:5:2); { width:precision }
end.
