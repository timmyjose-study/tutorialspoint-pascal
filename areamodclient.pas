program AreaModClient;
uses AreaMod;

var
  Length, Breadth, Radius, Base, Height: Real;

begin
  WriteLn('Enter the Length of the rectangle');
  ReadLn(Length);
  WriteLn('Enter the breadth of the rectangle');
  ReadLn(Breadth);
  WriteLn('Area of the rectangle = ', RectangleArea(Length, Breadth):7:3);

  WriteLn('Enter the radius of the circle');
  ReadLn(Radius);
  WriteLn('Area of the circle = ', CircleArea(Radius):7:3);

  WriteLn('Enter the base of the triangle');
  ReadLn(Base);
  WriteLn('Enter the height of the triangle');
  ReadLn(Height);
  WriteLn('Area of triangle = ', TriangleArea(Base, Height):7:3);
end.
