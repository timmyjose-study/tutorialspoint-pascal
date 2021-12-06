unit AreaMod;

interface

function RectangleArea(Length, Breadth: Real): Real;

function CircleArea(Radius: Real): Real;

function TriangleArea(Base, Height: Real): Real;

implementation

function RectangleArea(Length, Breadth: Real): Real;
begin
  RectangleArea := Length * Breadth;
end;

function CircleArea(Radius: Real): Real;
const
  PI = 3.141592654;

begin
  CircleArea := PI * Radius * Radius;
end;

function TriangleArea(Base, Height: Real): Real;
begin
  TriangleArea := 0.5 * Base * Height;
end;
end.