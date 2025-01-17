unit main2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    PrimeList: TListBox;
    Min: TEdit;
    Max: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
function DoFactor(NotUsed : Pointer) : Integer;
var
  Low,High,Count,Count2 : Integer;

begin
  {Limpia el cuadro de lista}
  Form1.PrimeList.Items.Clear;
  {Obtiene los limites del ciclo de los cuadros de edicion}
  Low := strtoint(Form1.Min.Text);
  High := strtoint(Form1.Max.Text);

  {efectua la ietracion para los numeros en el rango}
  for Count := Low to High do
  begin
    Count2 := 2;
    {Determina si el numro se divide entero o si hemos lelgado al limite}
    while(Count2 < Count) and not (Count mod Count2 = 0) do
      inc(Count2);
    {Si el numero es primo, incorporelo al cuadro de la lista}
    If (Count=Count2) then
      Form1.PrimeList.Items.Add(inttostr(Count));
  end; {for}
end; {de la funcion doFactor}


procedure TForm1.Button1Click(Sender: TObject);
var
  THID : DWORD;
begin
  CreateThread(nil,0,@doFactor,nil,0,THID);
end; {del procedimiento}

end. {del programa}
