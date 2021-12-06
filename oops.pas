program Oops;

type
  Person = object
  private
    Name: String;
    Age: Word;

  public
    constructor Init(N: String; A: Word);
    destructor Done;

    procedure SetName(N: String);
    function GetName(): String;

    procedure SetAge(A: Word);
    function GetAge(): Word;
  end;

constructor Person.Init(N: String; A: Word);
begin
  N := Name;
  A := Age;
end;

destructor Person.Done;
begin
  WriteLn('Destructor for Person called');
end;

procedure Person.SetName(N: String);
begin
  Name := N;
end;

function Person.GetName(): String;
begin
  GetName := Name;
end;

procedure Person.SetAge(A: Word);
begin
  Age := A;
end;

function Person.GetAge(): Word;
begin
  GetAge := Age;
end;

type
  Employee = object(Person)
    private
      Company: String;

    public
      constructor Init(N: String; A: Word; C: String);
      destructor Done;

      procedure SetCompany(C: String);
      function GetCompany(): String;
  end;

constructor Employee.Init(N: String; A: Word; C: String);
begin
  Name := N;
  Age := A;
  Company := C;
end;

destructor Employee.Done;
begin
  WriteLn('Destructor for Employee called');
end;

procedure Employee.SetCompany(C: String);
begin
  Company := C
end;

function Employee.GetCompany(): String;
begin
  GetCompany := Company;
end;

var
  Bob: Employee;

begin
  Bob.Init('Bob', 42, 'Acme');
  WriteLn(Bob.GetName, ', ', Bob.GetAge, ', ', Bob.GetCompany);
  Bob.Done;
end.
