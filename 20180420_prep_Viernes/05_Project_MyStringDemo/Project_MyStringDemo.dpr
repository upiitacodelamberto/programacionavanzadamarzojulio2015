program Project_MyStringDemo;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  LastName : String;
  FirstName : String[5];
  NewFirstName : String[30];

begin
  LastName := 'Smith-Mistler';
  FirstName := 'Susan';
  NewFirstName := 'Angelica';

  WriteLn('First name is ',FirstName);
  WriteLn('Last name is ',LastName);

  FirstName := NewFirstName;

  WriteLn('The changed first name is ',FirstName);

  ReadLn {Para evitar el cierre de la ventana hasta oprimir enter}
end. {Project_MyStringDemo}