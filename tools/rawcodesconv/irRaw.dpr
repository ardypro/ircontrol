program irRaw;

uses
  Forms,
  uMain in 'uMain.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := '�������ɼ�ת������';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
