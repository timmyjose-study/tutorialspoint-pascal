program RecordAccessUsingWith;

type
  PersonPtr = ^Person;
  Person = record
            Name: String;
            Age: Word;
            Salary: Real;
          end;

procedure DisplayPerson(P: PersonPtr);
begin
  with P^ do
    WriteLn(Name, ' aged ', Age, ' earns $', Salary:0:3, ' per annum');
end;

var
  Bob, Dave: PersonPtr;
  Sasha: Person;

begin
  New(Bob);
  New(Dave);

  with Bob^ do
    begin
      Name := 'Bob';
      Age := 42;
      Salary := 123.45;
    end;

  DisplayPerson(Bob);
  Dispose(Bob);

  with Dave^ do
    begin
      Name := 'Dave';
      Age := 21;
      Salary := 321.12;
    end;

   DisplayPerson(Dave); 
   Dispose(Dave);

  with Sasha do
    begin
      Name := 'Sasha';
      Age := 89;
      Salary := 542321.19;
    end;

  DisplayPerson(@Sasha);
end.
