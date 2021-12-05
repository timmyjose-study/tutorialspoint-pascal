(*
  String types in Pascal - character strings, Strings, ANSI Strings, pchars, Short Strings 
*)

program StringDemo;
uses SysUtils; { for AppendStr }

procedure AnsiStringDemo;
var
  Str1, Str2, Str3: AnsiString; { strings with no limit on the length }
  Str4: String;
  Len: Integer;
begin
  Str1 := 'Hello';
  Str2 := 'World';

  Str3 := Str1;
  WriteLn(Str3);

  AppendStr(Str1, Str2);
  WriteLn(Str1);

  Str4 := Str1 + Str2;
  WriteLn(Str4);

  Len := byte(Str4[0]);
  WriteLn(Len);
end;

var
  Greetings: String; { String variable }
  Name: packed array [1..10] of char; { character string }
  Organisation: String[10]; { Short String }
  Message: pchar; { NUL-terminated strings }
begin
  AnsiStringDemo;

  Greetings := 'Hello';
  WriteLn(Greetings);

  WriteLn('Please enter your name');
  ReadLn(Name);
  WriteLn('Nice to meet you, ', Name);

  WriteLn('What is your organisation?');
  ReadLn(Organisation);
  WriteLn('I don"t like ', Organisation);

  Message := 'Good day to you, sir!';
  WriteLn(Message);
end.