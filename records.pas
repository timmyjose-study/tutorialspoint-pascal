program Records;

type 
Book = record
        Title: String;
        Author: String;
        Subject: String;
        Bookid: String;
      end;

procedure DisplayBook(B: Book);
begin
  WriteLn('"', B.Title, '", a(n) ', B.Subject, ' was written by ', B.Author, ', and has id ', B.BookId);
end;

var
  Book1, Book2: Book;

begin
  Book1.Title := 'War and Peace';
  Book1.Author := 'Leo Tolstoy';
  Book1.Subject := 'Drama';
  Book1.BookId := '123';
  DisplayBook(Book1);

  Book2.Title := 'The Strangest Man';
  Book2.Author := 'Graham Farmello';
  Book2.Subject := 'Biography';
  Book2.BookId := '456';
  DisplayBook(Book2);
end.