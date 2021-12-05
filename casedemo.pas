program CaseDemo;

var 
  grade: Char;

begin
  grade := 'C';
  case grade of
    'A': WriteLn('Excellent!');
    'B', 'C': WriteLn('Well done.');
    'D': WriteLn('Must improve');
    'E', 'F': WriteLn('Hopeless.');
  else
    WriteLn('Why are we even here?');
  end;

  grade := 'X';
  case grade of 
   'A', 'B', 'C', 'D', 'E', 'F': WriteLn('Okay.');
  else
     WriteLn('Why are we even here?');
  end;
end.
