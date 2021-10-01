program ConvertToJSON;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {FrmFBtoJSON};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmFBtoJSON, FrmFBtoJSON);
  Application.Run;
end.
