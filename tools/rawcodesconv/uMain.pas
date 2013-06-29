unit uMain;

{
  Created on June 28, 2013

  Modified on June 30, 2013, the contents, if any, in mnoRaw would be cleared
  after the csv file was opened successfuly.
}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  clipbrd,
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
    cnData: TADOConnection;
    tblData: TADOTable;
    dsData: TDataSource;
    lblRatio: TLabel;
    edtRatio: TEdit;
    edtQTY: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    edtLen: TEdit;
    procedure btnOpenClick(Sender: TObject);
    procedure btnConvertClick(Sender: TObject);
    procedure rdSamplesClick(Sender: TObject);
    procedure edtArrayNameKeyPress(Sender: TObject; var Key: Char);
    procedure btnCopyClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

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

procedure TfrmMain.btnConvertClick(Sender: TObject);
var
  ratio: single;
  r: string;
  lst: single;
  cur: single;
  strRow: string; // 行
  i: integer;
  len: integer;
begin
  mmoRaw.Clear;
  len := strtoint(edtLen.Text);
  btnCopy.Enabled := false;
  edtQTY.Text := '0';
  if (rdSamples.Checked) then
    ratio := strtofloat(edtRatio.Text)
  else
    ratio := 1000000;

  r := '';
  strRow := '';
  i := 0;
  try
    tblData.First;
    tblData.Next; // 抛弃第二条和第三条
    lst := tblData.Fields[0].AsSingle;
    while (not tblData.Eof) do
    begin
      tblData.Next;
      cur := tblData.Fields[0].AsSingle;
      lst := cur - lst;
      lst := lst * ratio;
      if (strRow = '') then
        strRow := intToStr(trunc(lst))
      else
        strRow := strRow + ',' + intToStr(trunc(lst));

      if (length(strRow) > len) then
      begin
        r := r + ',' + #13#10 + strRow;
        strRow := '';
      end;

      lst := cur;
      inc(i);
    end;
    r := r + ',' + #13#10 + strRow;
  finally
    delete(r, 1, 1);
    delete(r, length(r) - 2, 2);
    r := edtArrayName.Text + '[]=' + '{' + r + #13#10 + '};  //共有' + intToStr
      (i - 1) + '条数据';
    mmoRaw.Lines.Add(r);
    // cnData.Close;
    btnCopy.Enabled := true;

    edtQTY.Text := intToStr(i - 1);
  end;
end;

procedure TfrmMain.btnCopyClick(Sender: TObject);
var
  clp: tclipboard;

begin
  clp := tclipboard.Create;
  clp.AsText := mmoRaw.Lines.Text;
  clp := nil;
end;

procedure TfrmMain.btnOpenClick(Sender: TObject);
var
  conStr: string;
  p: string;
  f: string;
begin
  if (dlgOpen.Execute()) then
  begin
    fileName := dlgOpen.fileName;
    p := extractFilePath(fileName);
    f := extractfilename(fileName);
    if (self.chkTitle.Checked) then
      conStr := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + p +
        ';Extended Properties="Text;HDR=YES;IMEX=1";Persist Security Info=False'
    else
      conStr := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + p +
        ';Extended Properties="Text;HDR=YES;IMEX=1";Persist Security Info=False';

    // showmessage(conStr);
    cnData.Close;
    cnData.ConnectionString := conStr;
    cnData.LoginPrompt := false;
    cnData.Open();

    try
      tblData.Active := false;
      tblData.TableName := f;
      tblData.Active := true;
      // showmessage(inttostr(tblData.RecordCount ));
    finally
      btnConvert.Enabled := tblData.Active;
      mmoRaw.Clear ;
    end;
  end;
end;

procedure TfrmMain.edtArrayNameKeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key = '[') or (Key = ']') or (Key = '=')) then
    Key := #0;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tblData.Active := false;
  cnData.Close;
end;

procedure TfrmMain.rdSamplesClick(Sender: TObject);
begin
  lblRatio.Visible := rdSamples.Checked;
  edtRatio.Visible := rdSamples.Checked;
end;

end.
