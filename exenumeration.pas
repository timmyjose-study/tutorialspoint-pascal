program ExEnumeration;

type
  Beverage = (coffee, tea, milk, water, coke, limejuice);

var
  Drink: Beverage;

begin
  WriteLn('Which drink would you like to have?');
  ReadLn(Drink); { runtime error if input is not in `Beverage` }
  WriteLn('You have chosen to drink ', Drink);
end.
