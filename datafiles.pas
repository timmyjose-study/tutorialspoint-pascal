(*
  Write:

  var FooInst: Foo;
  var F: file of Foo;

  Assign(F, '<filename>');
  Rewrite(F);
  ....
  Write(F, FooInst);
  Close(F);

  Read:

  Assign(F, '<filename.');
  Reset(F);

  while not Eof(F) do
    begin
      Read(F, FooInst);
      ...
    end;

  Close(F);
*)

program DataFiles;
uses SysUtils;

type
  StudentPtr = ^Student;
  Student = record
              Name: String;
              Addr: String;
              Batch: String;
            end;

var
  S: StudentPtr;

procedure DisplayStudent(S: StudentPtr);
begin
  with S^ do
    WriteLn('Name: ', Name, ', Addr: ', Addr, ', Batch: ', Batch);
end;

procedure WriteStudent(S: StudentPtr; Filename: String);
var
  F: file of Student;

begin
  Assign(F, Filename);
  Rewrite(F);
  Write(F, S^);
  Close(F);
end;

procedure ReadStudents(Filename: String);
var
  S: StudentPtr;
  F: file of Student;

begin
  Assign(F, Filename);
  Reset(F);

  New(S);
  while not Eof(F) do
    begin
      Read(F, S^);
      DisplayStudent(S);
    end;
  Dispose(S);
  Close(F);
end;

begin
  New(S);
  with S^ do
    begin
      Name := 'Bob';
      Addr := 'Bobtown';
      Batch := 'Bob101';
    end;

  WriteStudent(S, 'students.dat');
  Dispose(S);

  ReadStudents('students.dat');
end.
