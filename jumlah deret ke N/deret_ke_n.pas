unit DERET_KE_N;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    edtFaktorial: TEdit;
    edtJumlah: TEdit;
    edtDeret: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
function Factorial(n: integer): integer;
begin
  if n <= 1 then
    Result := 1
  else
    Result := n * Factorial(n - 1);
end;

procedure TForm1.Button1Click(Sender: TObject);
  var
  n, faktorial, jumlah: integer;
  i: Integer;
begin
// Dapatkan nilai N dari TEdit (edtDeret)
  n := StrToIntDef(edtDeret.Text, 0);

// Hitung jumlah deret ke-N
  jumlah := 0;
  for i := 1 to n do
    jumlah := jumlah + i;
  edtJumlah.Text := IntToStr(jumlah);

// Hitung faktorial dari jumlah deret dan tampilkan hasilnya
  faktorial := Factorial(n);
  edtFaktorial.Text := IntToStr(faktorial);

end;

end.

