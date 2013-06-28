object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'IR Raw '#32534#30721#22788#32622#31243#24207' 20130626'
  ClientHeight = 485
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 596
    Top = 444
    Width = 108
    Height = 13
    Caption = #20813#36153#31243#24207#65292#33258#30001#20998#21457
  end
  object dbgRaw: TDBGrid
    Left = 8
    Top = 8
    Width = 457
    Height = 297
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
    Top = 320
    Width = 457
    Height = 157
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
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
      Left = 16
      Top = 32
      Width = 96
      Height = 13
      Caption = #28304#25968#25454#21253#21547#26631#39064#34892
    end
    object Label2: TLabel
      Left = 40
      Top = 64
      Width = 72
      Height = 13
      Caption = #23548#20986#25968#25454#26684#24335
    end
    object rdKen: TRadioButton
      Left = 136
      Top = 64
      Width = 113
      Height = 17
      Caption = 'Ken library'#36866#29992
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object chkTitle: TCheckBox
      Left = 136
      Top = 32
      Width = 97
      Height = 17
      TabOrder = 1
    end
    object rdLadyada: TRadioButton
      Left = 136
      Top = 96
      Width = 113
      Height = 17
      Caption = 'ladyada lib'#36866#29992
      TabOrder = 2
    end
  end
  object btnConvert: TButton
    Left = 607
    Top = 232
    Width = 75
    Height = 25
    Caption = #36716#25442
    TabOrder = 3
  end
  object btnCopy: TButton
    Left = 495
    Top = 352
    Width = 88
    Height = 65
    Caption = #22797#21046'RAW'#32534#30721
    TabOrder = 4
  end
end
