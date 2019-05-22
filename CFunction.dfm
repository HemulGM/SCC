object FormCFunction: TFormCFunction
  Left = 418
  Top = 218
  BorderStyle = bsDialog
  Caption = #1043#1088#1072#1092#1080#1082#1080
  ClientHeight = 282
  ClientWidth = 529
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LabelAmplitude: TLabel
    Left = 8
    Top = 144
    Width = 127
    Height = 13
    Caption = #1052#1080#1085#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077':'
  end
  object LabelLen: TLabel
    Left = 184
    Top = 144
    Width = 137
    Height = 13
    Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077':'
  end
  object LabelXStep: TLabel
    Left = 344
    Top = 144
    Width = 148
    Height = 13
    Caption = #1064#1072#1075' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' ('#1048#1090#1077#1088#1072#1094#1080#1103'):'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 136
    Width = 513
    Height = 9
    Shape = bsTopLine
  end
  object Label1: TLabel
    Left = 8
    Top = 184
    Width = 28
    Height = 13
    Caption = #1062#1074#1077#1090':'
  end
  object Label2: TLabel
    Left = 344
    Top = 8
    Width = 50
    Height = 13
    Caption = #1043#1088#1072#1092#1080#1082#1080':'
  end
  object Label3: TLabel
    Left = 184
    Top = 184
    Width = 54
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
  end
  object ColorPickerEditor: TsColorSelect
    Left = 8
    Top = 203
    Width = 23
    Height = 22
    Glyph.Data = {
      BA030000424DBA0300000000000036000000280000000F0000000F0000000100
      2000000000008403000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ColorValue = clBlack
  end
  object EditXStep: TEdit
    Left = 344
    Top = 160
    Width = 177
    Height = 21
    TabOrder = 0
    Text = '0,01'
  end
  object CheckBoxFix: TCheckBox
    Left = 164
    Top = 162
    Width = 17
    Height = 17
    Hint = #1048#1079#1084#1077#1085#1103#1090#1100' '#1079#1085#1072#1095#1077#1085#1080#1103' '#1086#1076#1085#1086#1074#1088#1077#1084#1077#1085#1085#1086
    TabOrder = 2
  end
  object ComboBoxFunctions: TComboBox
    Left = 344
    Top = 24
    Width = 177
    Height = 21
    Style = csDropDownList
    TabOrder = 4
    OnChange = ComboBoxFunctionsChange
  end
  object Panel1: TPanel
    Left = 0
    Top = 241
    Width = 529
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 6
    object ButtonAddFunc: TButton
      Left = 336
      Top = 8
      Width = 91
      Height = 25
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1075#1088#1072#1092#1080#1082
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 0
      OnClick = ButtonAddFuncClick
    end
    object ButtonCancel: TButton
      Left = 432
      Top = 8
      Width = 89
      Height = 25
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 1
      OnClick = ButtonCancelClick
    end
    object ButtonChange: TButton
      Left = 256
      Top = 8
      Width = 75
      Height = 25
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1081' '#1075#1088#1072#1092#1080#1082
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      TabOrder = 2
      OnClick = ButtonChangeClick
    end
    object ButtonRefresh: TButton
      Left = 8
      Top = 8
      Width = 81
      Height = 25
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1075#1088#1072#1092#1080#1082#1086#1074
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      TabOrder = 3
      OnClick = ButtonRefreshClick
    end
    object ButtonCorrect: TButton
      Left = 176
      Top = 8
      Width = 75
      Height = 25
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1090#1086#1083#1100#1082#1086' '#1087#1072#1088#1072#1084#1077#1090#1088' '#1094#1074#1077#1090#1072', '#1085#1072#1079#1074#1072#1085#1080#1077' '#1080' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077
      Caption = #1055#1088#1072#1074#1080#1090#1100
      TabOrder = 4
      OnClick = ButtonCorrectClick
    end
    object ButtonDelete: TButton
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1075#1088#1072#1092#1080#1082
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 5
      OnClick = ButtonDeleteClick
    end
  end
  object EditName: TEdit
    Left = 184
    Top = 200
    Width = 153
    Height = 21
    TabOrder = 1
  end
  object CheckBoxUse: TCheckBox
    Left = 352
    Top = 200
    Width = 97
    Height = 17
    Hint = #1056#1080#1089#1086#1074#1072#1090#1100' '#1092#1091#1085#1082#1094#1080#1102' '#1085#1072' '#1057#1050
    Caption = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100
    TabOrder = 3
  end
  object GroupBoxFunction: TGroupBox
    Left = 8
    Top = 8
    Width = 257
    Height = 105
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1092#1091#1085#1082#1094#1080#1102
    TabOrder = 5
    object LabelSelFunc: TLabel
      Left = 8
      Top = 16
      Width = 109
      Height = 13
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1092#1091#1085#1082#1094#1080#1102':'
    end
    object LabelSelfFunction: TLabel
      Left = 8
      Top = 56
      Width = 126
      Height = 13
      Caption = #1057#1074#1086#1103' '#1092#1091#1085#1082#1094#1080#1103' ('#1048#1084#1103' dll):'
    end
    object ButtonNewCompile: TSpeedButton
      Left = 225
      Top = 71
      Width = 25
      Height = 23
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1091' '#1089' '#1092#1091#1085#1082#1094#1080#1077#1081
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBFBFBFA3A3A3A3A3A3A3A3A3A3
        A3A3A3A3A3A3A3A3A3A3A3A3A3A3BFBFBFFF00FFFF00FFFF00FFFF00FFFF00FF
        A3A3A3ABABABAEAEAEB0B0B0B3B3B3B6B6B6B9B9B9BCBCBCBFBFBFC1C1C1C4C4
        C4A3A3A3FF00FFFF00FFFF00FFBFBFBFA0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
        A0A0A1A1A1A1A1A1A3A3A3A4A4A4A5A5A5A7A7A7BFBFBFFF00FFFF00FFA3A3A3
        A3A3A3A3A3A3EFEFEFEFEFEFA2A2A2A1A1A1A1A1A1A1A1A1EFEFEFEFEFEFA1A1
        A1A0A0A0A3A3A3FF00FFFF00FFA3A3A3A6A6A6A6A6A6F2F2F2F2F2F2F2F2F2A4
        A4A4A4A4A4A4A4A4F2F2F2F2F2F2A3A3A3A3A3A3A3A3A3FF00FFFF00FFA3A3A3
        ABABABABABABABABABF4F4F4F4F4F4F4F4F4A9A9A9A9A9A9F4F4F4F4F4F4A7A7
        A7A7A7A7A3A3A3FF00FFFF00FFA3A3A3B2B2B2B1B1B1B1B1B1B0B0B0F7F7F7F7
        F7F7F7F7F7AEAEAEF7F7F7F7F7F7ACACACACACACA3A3A3FF00FFFF00FFA3A3A3
        B9B9B9B9B9B9B8B8B8B7B7B7FAFAFAFAFAFAFAFAFAB5B5B5FAFAFAFAFAFAB3B3
        B3B3B3B3A3A3A3FF00FFFF00FFA3A3A3C0C0C0BFBFBFBFBFBFFCFCFCFCFCFCFC
        FCFCBCBCBCBCBCBCFCFCFCFCFCFCBABABABABABAA3A3A3FF00FFFF00FFA3A3A3
        C7C7C7C6C6C6FEFEFEFEFEFEFEFEFEC4C4C4C4C4C4C3C3C3FEFEFEFEFEFEC1C1
        C1C0C0C0A3A3A3FF00FFFF00FFA3A3A3CCCCCCCCCCCCFFFFFFFFFFFFCACACACA
        CACACACACAC9C9C9FFFFFFFFFFFFC8C8C8C7C7C7A3A3A3FF00FFFF00FFBFBFBF
        D9D9D9D7D7D7D0D0D0D0D0D0CFCFCFCFCFCFCFCFCFCECECECECECED1D1D1D7D7
        D7D6D6D6BFBFBFFF00FFFF00FFFF00FFA3A3A3E5E5E5E4E4E4E4E4E4E4E4E4E4
        E4E4E4E4E4E3E3E3E3E3E3E4E4E4E4E4E4A3A3A3FF00FFFF00FFFF00FFFF00FF
        FF00FFBFBFBFA3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3BFBF
        BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = ButtonNewCompileClick
    end
    object ButtonCheckDll: TSpeedButton
      Left = 201
      Top = 71
      Width = 25
      Height = 23
      Hint = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1091
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFD2D2D2BEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE
        BEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBED2D2D2FF00FFD2D2D2D7D7D7
        EEEEEEEDEDEDEBEBEBEAEAEAE9E9E9E9E9E9E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8D4D4D4D2D2D2BEBEBEF0F0F0EFEFEFEEEEEEEDEDEDEBEBEBEAEAEAE9
        E9E9E9E9E9E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8BEBEBEBEBEBEF4F4F4
        F5F5F5EFEFEFEEEEEEEDEDEDEBEBEBA4A4A4A4A4A4E9E9E9E8E8E8E8E8E8E8E8
        E8EEEEEEECECECBEBEBEFF00FFBEBEBEF5F5F5F0F0F0EFEFEFEEEEEEEDEDEDA4
        A4A4A4A4A4E9E9E9E9E9E9E8E8E8E8E8E8EDEDEDBEBEBEFF00FFFF00FFBEBEBE
        F5F5F5F6F6F6F0F0F0EFEFEFEEEEEEEDEDEDEBEBEBEAEAEAE9E9E9E9E9E9EEEE
        EEECECECBEBEBEFF00FFFF00FFFF00FFBEBEBEF6F6F6F1F1F1F0F0F0EFEFEFA4
        A4A4A8A8A8EBEBEBEAEAEAE9E9E9EEEEEEBEBEBEFF00FFFF00FFFF00FFFF00FF
        BEBEBEF6F6F6F7F7F7F1F1F1F0F0F0A4A4A4A4A4A4EDEDEDEBEBEBF0F0F0EDED
        EDBEBEBEFF00FFFF00FFFF00FFFF00FFFF00FFBEBEBEF7F7F7F2F2F2F1F1F1A4
        A4A4A4A4A4EEEEEEEDEDEDF0F0F0BEBEBEFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFBEBEBEF7F7F7F8F8F8F2F2F2A4A4A4A4A4A4EFEFEFF3F3F3F0F0F0BEBE
        BEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBEBEBEF8F8F8F3F3F3A4
        A4A4A4A4A4F0F0F0F3F3F3BEBEBEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFBEBEBEF8F8F8F9F9F9F3F3F3F2F2F2F6F6F6F3F3F3BEBEBEFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBEBEBEFBFBFBF7
        F7F7F6F6F6F9F9F9BEBEBEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFD2D2D2E1E1E1FCFCFCFCFCFCE0E0E0D2D2D2FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD2D2D2BE
        BEBEBEBEBED2D2D2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = ButtonCheckDllClick
    end
    object ComboBoxSimple: TComboBox
      Left = 8
      Top = 32
      Width = 241
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = #1057#1074#1086#1103' '#1092#1091#1085#1082#1094#1080#1103
      OnChange = ComboBoxSimpleChange
      Items.Strings = (
        #1057#1074#1086#1103' '#1092#1091#1085#1082#1094#1080#1103
        #1050#1086#1089#1080#1085#1091#1089
        #1057#1080#1085#1091#1089
        #1069#1082#1089#1087#1072#1085#1077#1085#1090#1072
        #1058#1072#1085#1075#1077#1085#1089
        #1050#1086#1090#1072#1085#1075#1077#1085#1089
        #1040#1088#1082#1082#1086#1090#1072#1085#1075#1077#1085#1089
        #1051#1077#1089#1090#1085#1080#1094#1072
        #1050#1086#1089#1077#1082#1072#1085#1089
        #1057#1077#1082#1072#1085#1089
        #1055#1088#1080#1084#1077#1088' 1'
        #1055#1088#1080#1084#1077#1088' 2'
        #1055#1088#1080#1084#1077#1088' 3'
        #1055#1088#1080#1084#1077#1088' 4'
        #1055#1088#1080#1084#1077#1088' 5'
        #1055#1088#1080#1084#1077#1088' 6'
        #1055#1088#1080#1084#1077#1088' 7')
    end
    object EditSelfFunction: TEdit
      Left = 8
      Top = 72
      Width = 193
      Height = 21
      Hint = #1048#1084#1103' '#1092#1072#1081#1083#1072' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1080' '#1089' '#1092#1091#1085#1082#1094#1080#1077#1081
      TabOrder = 1
      Text = '\CompileFunct\CustomFunction.dll'
    end
  end
  object SpinEditorMin: TSpinEdit
    Left = 8
    Top = 163
    Width = 150
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 7
    Value = 0
  end
  object SpinEditorMax: TSpinEdit
    Left = 187
    Top = 163
    Width = 150
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 8
    Value = 0
  end
end
