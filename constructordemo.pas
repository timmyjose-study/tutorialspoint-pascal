program ConstructorDemo;

type
  Rectangle = object
    private
      Length, Width: Integer;

    public
      constructor Init(L, W: Integer);
      Destructor Done;

      procedure SetLength(L: Integer);
      function GetLength(): Integer;

      procedure SetWidth(W: Integer);
      function GetWidth(): Integer;

      function Area(): Integer;
  end;

constructor Rectangle.Init(L, W: Integer);
begin
  Length := L;
  Width := W;
end;

destructor Rectangle.Done;
begin
  WriteLn('Destructor called');
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

function Rectangle.Area(): Integer;
begin
  Area := Length * Width;
end;

var
  R: Rectangle;
  Ptr: ^Rectangle;

begin
  R.SetLength(10);
  R.SetWidth(20);
  WriteLn('Area of R = ', R.Area);
  R.Done;

  New(Ptr);
  Ptr^.SetLength(15);
  Ptr^.SetWidth(20);
  WriteLn('Area of Ptr^ = ', Ptr^.Area);
  Ptr^.Done;
  Dispose(Ptr);
end.
