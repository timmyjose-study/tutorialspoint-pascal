program Greetings;

const Message = 'Welcome to the world of Pascal';

type
  Name = String;

var
  FirstName, LastName: Name;

begin
  WriteLn('Enter your first name');
  ReadLn(FirstName);

  WriteLn('Enter your last name');
  ReadLn(LastName);

  Writeln;
  WriteLn(Message, ', ', FirstName, ' ', LastName);
end.
