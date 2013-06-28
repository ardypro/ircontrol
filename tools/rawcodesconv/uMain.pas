unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ADODB, DB, Grids, DBGrids;

type
  TfrmMain = class(TForm)
    dbgRaw: TDBGrid;
    mmoRaw: TMemo;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    rdKen: TRadioButton;
    chkTitle: TCheckBox;
    rdLadyada: TRadioButton;
    btnConvert: TButton;
    btnCopy: TButton;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

end.
