unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ADODB, DB, Grids, DBGrids, ExtDlgs;

type
  TfrmMain = class(TForm)
    dbgRaw: TDBGrid;
    mmoRaw: TMemo;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    chkTitle: TCheckBox;
    btnConvert: TButton;
    btnCopy: TButton;
    Label3: TLabel;
    dlgOpen: TOpenTextFileDialog;
    Label4: TLabel;
    edtArrayName: TEdit;
    Label2: TLabel;
    rdTimestamp: TRadioButton;
    rdSamples: TRadioButton;
    btnOpen: TButton;
    procedure btnOpenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  fileName: string;

implementation

{$R *.dfm}

procedure TfrmMain.btnOpenClick(Sender: TObject);
begin
  if (dlgOpen.Execute()) then
  begin

  end;
end;

end.
