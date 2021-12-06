(* 
   GetMem/FreeMem are low-level. Use New/Dispose as much as possible
*)

program GetMemDemo;

var
  Name: packed array[1..100] of Char;
  Description: ^String;

begin
  Name := 'Timmy Jose';
  Description := GetMem(200);
  if not Assigned(Description) then
    WriteLn('Could not assign memory for Description')
  else
    Description^ := 'Raconteur of the ineluctable';

  WriteLn(Name, ' - ', Description^);
  FreeMem(Description);
end.

