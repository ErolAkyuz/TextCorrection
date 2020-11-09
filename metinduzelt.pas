unit metinduzelt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Vcl.ExtCtrls, Vcl.FileCtrl;

type
  Tfmkarakterduzelt = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    duzeltilmis: TMemo;
    rich: TMemo;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmkarakterduzelt: Tfmkarakterduzelt;

implementation

uses StrUtils,websayfakontrol;

{$R *.dfm}

procedure Tfmkarakterduzelt.Button1Click(Sender: TObject);
var
  Metin, Sonuc : AnsiString;
begin
  if duzeltilmis.Lines.Text = '' then
  begin
    Metin := rich.Lines.Text;
    Sonuc := AnsiReplaceStr(Metin , edit1.Text , edit2.Text);
    duzeltilmis.Lines.Text := sonuc;
  end else
  begin
    Metin := duzeltilmis.Lines.Text;
    Sonuc := AnsiReplaceStr(Metin , edit1.Text , edit2.Text);
    duzeltilmis.Lines.Text := '';
    duzeltilmis.Lines.Text := sonuc;
  end;
end;

procedure Tfmkarakterduzelt.Button2Click(Sender: TObject);
begin
  fmsayfakontrol := Tfmsayfakontrol.Create(Nil);
  fmsayfakontrol.Show;
end;

procedure DosyaListele(Path: string; Memo: TMemo);
var
  SR: TSearchRec;
begin
  if FindFirst(Path + '*.*', faAnyFile, SR) = 0 then
  begin
    repeat
      if (SR.Attr <> faDirectory) then
      begin
        Memo.Lines.Add(SR.Name);
      end;
    until FindNext(SR) <> 0;
    FindClose(SR);
  end;
end;

procedure Tfmkarakterduzelt.Button3Click(Sender: TObject);
var ts:string;
begin
  dosyalistele('D:\Unitech Bilgisayar ve Yazýlým\oyuncakkoyu.com\Ürünler\BEBEK - KIZ ÜRÜNLERÝ\',Memo1);
  dosyalistele('D:\Unitech Bilgisayar ve Yazýlým\oyuncakkoyu.com\Ürünler\DENÝZ ÜRÜNLERÝ\',Memo1);
  dosyalistele('D:\Unitech Bilgisayar ve Yazýlým\oyuncakkoyu.com\Ürünler\DÝÐER ÜRÜNLER\',Memo1);
  dosyalistele('D:\Unitech Bilgisayar ve Yazýlým\oyuncakkoyu.com\Ürünler\DÖNÜÞEN ARABA\',Memo1);
  dosyalistele('D:\Unitech Bilgisayar ve Yazýlým\oyuncakkoyu.com\Ürünler\ERKEK ARABA - KAMYON ÜRÜNLERÝ\',Memo1);
  dosyalistele('D:\Unitech Bilgisayar ve Yazýlým\oyuncakkoyu.com\Ürünler\KARTELA ÜRÜNLER\ERKEK KARTELA\',Memo1);
  dosyalistele('D:\Unitech Bilgisayar ve Yazýlým\oyuncakkoyu.com\Ürünler\KARTELA ÜRÜNLER\KIZ KARTELA ÜRÜNLER\',Memo1);
  dosyalistele('D:\Unitech Bilgisayar ve Yazýlým\oyuncakkoyu.com\Ürünler\KIZ MUTFAK ÜRÜNLERÝ\',Memo1);
  dosyalistele('D:\Unitech Bilgisayar ve Yazýlým\oyuncakkoyu.com\Ürünler\SÝLAH ÇEÞÝTLERÝ\',Memo1);
  dosyalistele('D:\Unitech Bilgisayar ve Yazýlým\oyuncakkoyu.com\Ürünler\SÜS ÜRÜNLERÝ\',Memo1);
  dosyalistele('D:\Unitech Bilgisayar ve Yazýlým\oyuncakkoyu.com\Ürünler\ZEKA OYUNCAKLARI\',Memo1);


end;

procedure Tfmkarakterduzelt.Button4Click(Sender: TObject);
begin
  rich.Lines.Clear;
  duzeltilmis.Lines.Text := '';
end;

end.
