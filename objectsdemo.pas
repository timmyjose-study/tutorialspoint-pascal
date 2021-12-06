(* Object Pascal *)

program ObjectsDemo;

type
  Rectangle = 
   object
    private 
      Length, Width: Integer;

    public
      procedure SetLength(L: Integer);
      function GetLength(): Integer;

      procedure SetWidth(W: Integer);
      function GetWidth(): Integer;

      procedure Draw;
    end;

procedure Rectangle.SetLength(L: Integer);
begin
  Length := L;
end;

function Rectangle.GetLength(): Integer;
begin
  GetLength := Length;
end;

procedure Rectangle.SetWidth(W: Integer);
begin
  Width := W;
end;

function Rectangle.GetWidth(): Integer;
begin
  GetWidth := Width;
end;

procedure Rectangle.Draw;
var
  I, J: Integer;

begin
  for I := 1 to Length do
    begin
      for J := 1 to Width do
        Write(' * ');
    WriteLn;
    end;
end;

var 
  R: Rectangle;
  Ptr: ^Rectangle;

begin
  R.SetLength(2);
  R.SetWidth(3);
  R.Draw;
  WriteLn;

  New(Ptr);
  Ptr^.SetLength(5);
  Ptr^.SetWidth(4);
  Ptr^.Draw;
  Dispose(Ptr);
end.
