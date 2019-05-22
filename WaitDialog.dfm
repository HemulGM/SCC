object FormWait: TFormWait
  Left = 309
  Top = 239
  BorderStyle = bsDialog
  Caption = #1042' '#1087#1088#1086#1094#1077#1089#1089#1077
  ClientHeight = 65
  ClientWidth = 433
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 219
    Height = 13
    Caption = #1055#1086#1076#1086#1078#1076#1080#1090#1077', '#1080#1076#1077#1090' '#1074#1099#1095#1080#1089#1083#1077#1085#1080#1077' '#1092#1091#1085#1082#1094#1080#1080'...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 32
    Width = 337
    Height = 25
    Smooth = True
    TabOrder = 0
  end
  object ButtonCancel: TButton
    Left = 352
    Top = 32
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 1
    OnClick = ButtonCancelClick
  end
end
