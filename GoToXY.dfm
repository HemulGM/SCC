object FormGoTo: TFormGoTo
  Left = 496
  Top = 269
  BorderStyle = bsDialog
  Caption = #1055#1077#1088#1077#1081#1090#1080' '#1087#1086' '#1082#1086#1086#1088#1076#1080#1085#1072#1090#1072#1084
  ClientHeight = 113
  ClientWidth = 321
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelX: TLabel
    Left = 32
    Top = 16
    Width = 83
    Height = 13
    Caption = 'X - '#1082#1086#1086#1088#1076#1080#1085#1072#1090#1072':'
  end
  object LabelY: TLabel
    Left = 32
    Top = 40
    Width = 82
    Height = 13
    Caption = 'Y - '#1082#1086#1086#1088#1076#1080#1085#1072#1090#1072':'
  end
  object Bevel1: TBevel
    Left = 0
    Top = 72
    Width = 321
    Height = 9
    Shape = bsTopLine
  end
  object EditX: TEdit
    Left = 120
    Top = 13
    Width = 193
    Height = 21
    TabOrder = 0
  end
  object EditY: TEdit
    Left = 120
    Top = 37
    Width = 193
    Height = 21
    TabOrder = 1
  end
  object ButtonCancel: TButton
    Left = 240
    Top = 80
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = ButtonCancelClick
  end
  object ButtonGoTo: TButton
    Left = 160
    Top = 80
    Width = 75
    Height = 25
    Caption = #1055#1077#1088#1077#1081#1090#1080
    TabOrder = 3
    OnClick = ButtonGoToClick
  end
end
