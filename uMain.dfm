object FrmFBtoJSON: TFrmFBtoJSON
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Convert FB to JSON'
  ClientHeight = 692
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 5
    Width = 71
    Height = 14
    Caption = 'Query Builder'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 181
    Width = 69
    Height = 14
    Caption = 'JSON Output'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object MemoQuery: TMemo
    Left = 8
    Top = 24
    Width = 673
    Height = 129
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object MemoJson: TMemo
    Left = 8
    Top = 200
    Width = 673
    Height = 398
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object BtnGenJson: TButton
    Left = 8
    Top = 624
    Width = 673
    Height = 60
    Caption = 'GENERATE JSON'
    TabOrder = 2
    OnClick = BtnGenJsonClick
  end
  object DBCon: TFDConnection
    Params.Strings = (
      'Database=C:\DB\15NOV.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 24
    Top = 32
  end
  object FDQuery: TFDQuery
    Connection = DBCon
    Left = 248
    Top = 32
  end
  object FBDriverLink: TFDPhysFBDriverLink
    Left = 168
    Top = 32
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 88
    Top = 32
  end
  object DSCustom: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 312
    Top = 32
  end
end
