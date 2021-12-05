program ExSubrange;

type
  ValidMarks = 1 .. 100; 
  ValidGrade = 'A' .. 'E';

var
  Marks: ValidMarks;
  Grade: ValidGrade;
  SomeRandomValue: 10 .. 15;

begin
  WriteLn('Enter your marks (1 - 100)');
  ReadLn(Marks);

  WriteLn('Enter your grade (A - E)');
  ReadLn(Grade);

  WriteLn('Marks: ', Marks, ', and Grade: ', Grade);

  WriteLn('Enter some random value in the range [10, 15]');
  ReadLn(SomeRandomValue);
  WriteLn('Your favourite random number is ', SomeRandomValue);
end.
