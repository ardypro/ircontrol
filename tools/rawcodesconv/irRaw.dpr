program irRaw;

uses
  Forms,
  uMain in 'uMain.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := '红外编码采集转换工具';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
