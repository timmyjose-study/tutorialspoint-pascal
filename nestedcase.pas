program NestedCase;

var
  a, b: Integer;

begin
  a := 100;
  b := 200;

  case a of
    100: begin
          WriteLn('Part of the outer case statement');
          case b of
            200: WriteLn('part of the inner case statement');
          end;
        end;
  else
    WriteLn('This line will never be printed');
  end;
end.
