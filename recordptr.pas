program PointerToRecord;

type
  BookPtr = ^Book;
  Book = record
          Title: String;
          Author: String;
          Subject: String;
          BookId: String;
        end;

procedure DisplayBook(const B: BookPtr);
begin
  WriteLn('"', B^.Title, ' a(n) ', B^.Subject, ' was written by ', B^.Author, ', and has Id ', B^.BookId);
end;

var
  B1, B2: BookPtr;

begin
  { allocate memory on the heap for the objects }
  New(B1);
  New(B2);

  B1^.Title := 'War and Peace';
  B1^.Author := 'Leo Tolstoy';
  B1^.Subject := 'Drama';
  B1^.BookId := '123';
  DisplayBook(B1);

  B2^.Title := 'The Strangest Man';
  B2^.Author := 'Graham Farmello';
  B2^.Subject := 'Autobiography';
  B2^.BookId := '456';
  DisplayBook(B2);

  { free the memory that was previously allocated }
  Dispose(B1);
  Dispose(B2);
end.
