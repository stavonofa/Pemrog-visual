unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    edtTotalGaji: TEdit;
    Label5: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioGroup1: TRadioGroup;
    total: TButton;
    edtTunjangan: TEdit;
    edtGapok: TEdit;
    edtNama: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure ComboBox1Change(Sender: TObject);
    procedure edtNamaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure totalClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Label5Click(Sender: TObject);
begin

end;

procedure TForm1.RadioButton1Change(Sender: TObject);
begin

end;

procedure TForm1.totalClick(Sender: TObject);
var
  gajipokok, tunjangan, totalGaji: integer;
 begin
  // Penentuan Gaji Dasar berdasarkan Jabatan
  case ComboBox1.ItemIndex of
    0: gajiPokok := 5000000;   // Direktur
    1: gajiPokok := 3000000;   // Manager
    2: gajiPokok := 1000000;   // Karyawan
    else gajiPokok := 0;      // Tidak ada pilihan
  end;

  // Penentuan Tunjangan berdasarkan Status Pegawai
  if RadioGroup1.ItemIndex = 0 then
    tunjangan := 1500000   // Tetap
  else if RadioGroupo1.ItemIndex = 1 then
    tunjangan := 500000    // Honorer
  else
    tunjangan := 0;

  // Menghitung total gaji
  totalGaji := gajiPokok + tunjangan;

  // Menampilkan total gaji ke EditTotalGaji
  edtTotalGaji.Text := IntToStr(totalGaji);
end;

procedure TForm1.edtNamaChange(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin

end;

end.

