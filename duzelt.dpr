program duzelt;

uses
  Forms,
  metinduzelt in 'metinduzelt.pas' {fmkarakterduzelt},
  websayfakontrol in 'websayfakontrol.pas' {fmsayfakontrol};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfmkarakterduzelt, fmkarakterduzelt);
  Application.CreateForm(Tfmsayfakontrol, fmsayfakontrol);
  Application.Run;
end.
