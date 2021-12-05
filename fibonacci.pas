program Fibonacci;

function Fibonacci(N: Integer): Integer;
begin
  case N of
    0: Fibonacci :=  0;
    1: Fibonacci := 1;
    2: Fibonacci := 1;
  else
    Fibonacci := Fibonacci(N - 1) + Fibonacci(N - 2);
  end;
end;

var
  N, C: Integer;

begin
  WriteLn('Which term of the Fibonacci series do you require?');
  ReadLn(N);

  WriteLn('Term ', N, ' of the Fibonacci series is ', Fibonacci(N));

  for C := 0 to 20 do
    Write(Fibonacci(C), ' ');
  WriteLn;
end.
