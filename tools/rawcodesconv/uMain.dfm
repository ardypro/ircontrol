object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'IR Raw '#32534#30721#22788#32622#31243#24207' 20130628'
  ClientHeight = 532
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 607
    Top = 496
    Width = 108
    Height = 13
    Caption = #20813#36153#31243#24207#65292#33258#30001#20998#21457
  end
  object Label4: TLabel
    Left = 8
    Top = 496
    Width = 74
    Height = 13
    Caption = #36755#20986'array'#23450#20041
  end
  object Label5: TLabel
    Left = 312
    Top = 496
    Width = 24
    Height = 13
    Caption = #25968#37327
  end
  object dbgRaw: TDBGrid
    Left = 8
    Top = 8
    Width = 457
    Height = 193
    DataSource = dsData
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object mmoRaw: TMemo
    Left = 8
    Top = 216
    Width = 457
    Height = 261
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 471
    Top = 8
    Width = 285
    Height = 193
    Caption = #35774' '#32622
    TabOrder = 2
    object Label1: TLabel
      Left = 12
      Top = 32
      Width = 96
      Height = 13
      Caption = #28304#25968#25454#21253#21547#26631#39064#34892
    end
    object Label2: TLabel
      Left = 48
      Top = 80
      Width = 60
      Height = 13
      Caption = #28304#25968#25454#31867#22411
    end
    object lblRatio: TLabel
      Left = 136
      Top = 130
      Width = 48
      Height = 13
      Caption = #35843#25972#31995#25968
      Visible = False
    end
    object Label6: TLabel
      Left = 24
      Top = 160
      Width = 84
      Height = 13
      Caption = #23548#20986#23383#31526#20018#23485#24230
    end
    object chkTitle: TCheckBox
      Left = 136
      Top = 32
      Width = 97
      Height = 17
      TabOrder = 0
    end
    object rdTimestamp: TRadioButton
      Left = 136
      Top = 79
      Width = 113
      Height = 17
      Caption = #26102#38388#25139
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rdSamplesClick
    end
    object rdSamples: TRadioButton
      Left = 136
      Top = 107
      Width = 113
      Height = 17
      Caption = #26679#26412#25968#37327
      TabOrder = 2
      OnClick = rdSamplesClick
    end
    object edtRatio: TEdit
      Left = 190
      Top = 127
      Width = 89
      Height = 21
      TabOrder = 3
      Text = '1.0'
      Visible = False
    end
    object edtLen: TEdit
      Left = 136
      Top = 157
      Width = 33
      Height = 21
      NumbersOnly = True
      TabOrder = 4
      Text = '80'
    end
  end
  object btnConvert: TButton
    Left = 607
    Top = 232
    Width = 75
    Height = 25
    Caption = #36716#25442
    Enabled = False
    TabOrder = 3
    OnClick = btnConvertClick
  end
  object btnCopy: TButton
    Left = 495
    Top = 352
    Width = 88
    Height = 65
    Caption = #22797#21046'RAW'#32534#30721
    Enabled = False
    TabOrder = 4
    OnClick = btnCopyClick
  end
  object edtArrayName: TEdit
    Left = 112
    Top = 493
    Width = 145
    Height = 21
    TabOrder = 5
    Text = 'unsigned int PowerOn'
    TextHint = #33258#23450#20041#30340'Array'#21517#31216
    OnKeyPress = edtArrayNameKeyPress
  end
  object btnOpen: TButton
    Left = 504
    Top = 232
    Width = 75
    Height = 25
    Caption = #25171#24320'...'
    TabOrder = 6
    OnClick = btnOpenClick
  end
  object edtQTY: TEdit
    Left = 368
    Top = 493
    Width = 97
    Height = 21
    NumbersOnly = True
    ReadOnly = True
    TabOrder = 7
    Text = '0'
  end
  object dlgOpen: TOpenTextFileDialog
    FileName = 'E:\PowerOn.csv'
    Filter = 'csv'#25991#20214'(*.csv)|*.csv|text'#25991#20214'(*.txt)|*.txt'
    Title = #36873#25321#25968#25454#28304
    EncodingIndex = 4
    Left = 512
    Top = 272
  end
  object cnData: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=e:\;Extended Proper' +
      'ties="Text;HDR=YES;IMEX=1";Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 248
  end
  object tblData: TADOTable
    Connection = cnData
    CursorType = ctStatic
    TableName = 'PowerOn#csv'
    Left = 96
    Top = 248
  end
  object dsData: TDataSource
    DataSet = tblData
    Left = 168
    Top = 248
  end
end
