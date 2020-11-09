unit websayfakontrol;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls,
  Vcl.ExtCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IdCustomTCPServer, IdCustomHTTPServer, IdHTTPServer,
  IdServerIOHandler, IdSSL, IdSSLOpenSSL, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack;

type
  Tfmsayfakontrol = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    IdHTTP1: TIdHTTP;
    IdServerIOHandlerSSLOpenSSL1: TIdServerIOHandlerSSLOpenSSL;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmsayfakontrol: Tfmsayfakontrol;

implementation

{$R *.dfm}
uses metinduzelt,ShellApi,IdStack,IdException,URLMon;

Function dosyakontrol(IdHTTP: TIdHTTP;yol:string) :Boolean;
Begin
    try
      IdHttp.Get(yol);
      Result:=IdHttp.ResponseCode=200;
    except on EIdException do
      Result:=false;
    end;
end;

procedure Tfmsayfakontrol.Button1Click(Sender: TObject);
var kontrol: boolean;
i :integer;
begin
  i:=0;
  for  i := 0 to fmkarakterduzelt.rich.Lines.Count do
  begin
    kontrol := dosyakontrol(IdHTTP1,fmkarakterduzelt.rich.Lines[i]);
    if kontrol = false then memo1.Lines.Add(fmkarakterduzelt.rich.Lines[i]);
  end;
end;




end.
