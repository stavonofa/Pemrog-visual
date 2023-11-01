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
    Button3: TButton;
    kode_barang: TComboBox;
    EDiskon: TEdit;
    ETotal: TEdit;
    ESubTotal: TEdit;
    EHarga: TEdit;
    ENama: TEdit;
    EQTY: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure EQTYChange(Sender: TObject);
    procedure kode_barangChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.EQTYChange(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
  var
  qty, harga, subtotal, diskon, total: Integer;
  begin
  // Validasi Quantity
  if not TryStrToInt(EQTY.Text, qty) then
  begin
    ShowMessage('Masukkan jumlah yang valid');
    Exit;
  end;

  if (qty < 1) or (qty > 10) then
  begin
    ShowMessage('Quantity harus antara 1 hingga 10');
    Exit;
  end;

  // Tentukan harga berdasarkan kode barang
  case kode_barang.ItemIndex of
    0: begin
         ENama.Text := 'Speaker';
         harga := 50000;
       end;
    1: begin
         ENama.Text := 'Mouse';
         harga := 25000;
       end;
    2: begin
         ENama.Text := 'Harddisk';
         harga := 750000;
       end;
    3: begin
         ENama.Text := 'Mouse Pad';
         harga := 5000;
       end;
  else
    ShowMessage('Pilih kode barang yang valid');
    Exit;
  end;

  EHarga.Text := IntToStr(harga);

  // Hitung subtotal
  subtotal := harga * qty;
  ESubTotal.Text := IntToStr(subtotal);

  // Hitung diskon
  if subtotal >= 100000 then
    diskon := 15
  else if subtotal >= 50000 then
    diskon := 10
  else if subtotal >= 25000 then
    diskon := 5
  else
    diskon := 0;

  EDiskon.Text := IntToStr(diskon) + '%';

  // Hitung total
  total := subtotal - (subtotal * diskon div 100);
  ETotal.Text := IntToStr(total);

end;

procedure TForm1.kode_barangChange(Sender: TObject);
begin

end;

end.

