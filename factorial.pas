program Factorial;

function Factorial(N: Int64): Int64;
begin
  if N = 0 then
    Factorial :=  1
  else
    Factorial := N * Factorial(N - 1);
end;

var
  N: Int64;

begin
  WriteLn('Enter a number');
  ReadLn(N);
  WriteLn(Factorial(N));
end.
