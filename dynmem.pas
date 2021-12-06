program DynMem;

var
  Name: packed array [1..100] of Char;
  Description: ^String;

begin
  Name := 'Timmy Jose';

  New(Description);
  if not Assigned(Description) then
    WriteLn('Sorry, could not assign memory for Description')
  else
    Description^ := 'Raconteur of the ineluctable';

  WriteLn(Name, ' - ', Description^);
  Dispose(Description);
end.