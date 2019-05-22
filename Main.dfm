object FormMain: TFormMain
  Left = 325
  Top = 106
  ActiveControl = DrawPanel
  Caption = #1044#1077#1082#1072#1088#1090#1086#1074#1072' '#1089#1080#1089#1090#1077#1084#1072' '#1082#1086#1086#1088#1076#1080#1085#1072#1090
  ClientHeight = 574
  ClientWidth = 881
  Color = clBtnFace
  Constraints.MinHeight = 523
  Constraints.MinWidth = 897
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnKeyDown = DrawPanelKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object DrawPanel: TDrawPanel
    Left = 185
    Top = 0
    Width = 696
    Height = 555
    Align = alClient
    Caption = 'DrawPanel'
    ParentBackground = False
    TabOrder = 0
    OnCanResize = DrawPanelCanResize
    OnClick = DrawPanelClick
    OnMouseDown = DrawPanelMouseDown
    OnMouseEnter = DrawPanelMouseEnter
    OnMouseLeave = DrawPanelMouseLeave
    OnMouseMove = DrawPanelMouseMove
    OnMouseUp = DrawPanelMouseUp
    OnPaint = DrawPanelPaint
    OnMouseWheelDown = DrawPanelMouseWheelDown
    OnMouseWheelUp = DrawPanelMouseWheelUp
    OnKeyDown = DrawPanelKeyDown
    DesignSize = (
      696
      555)
    object PanelPoints: TPanelExt
      Left = 7
      Top = 303
      Width = 281
      Height = 233
      ParentBackground = False
      TabOrder = 0
      Visible = False
      OnMouseDown = PanelPointsMouseDown
      OnMouseMove = PanelPointsMouseMove
      OnPaint = PanelPointsPaint
      object LabelGID: TLabel
        Left = 8
        Top = 208
        Width = 46
        Height = 13
        Caption = 'LabelGID'
        Transparent = True
      end
      object ButtonCheckAll: TSpeedButton
        Left = 107
        Top = 204
        Width = 23
        Height = 22
        Hint = #1042#1099#1073#1088#1072#1090#1100' '#1074#1089#1077
        OnClick = ButtonCheckAllClick
      end
      object ButtonUnCheckAll: TSpeedButton
        Left = 82
        Top = 204
        Width = 23
        Height = 22
        Hint = #1059#1073#1088#1072#1090#1100' '#1074#1089#1077
        OnClick = ButtonUnCheckAllClick
      end
      object CheckListBoxPoints: TCheckListBox
        Left = 8
        Top = 32
        Width = 121
        Height = 169
        OnClickCheck = CheckListBoxPointsClickCheck
        ItemHeight = 13
        TabOrder = 0
        OnClick = CheckListBoxPointsClick
        OnMouseDown = CheckListBoxPointsMouseDown
      end
      object PanelTMP1: TPanel
        Left = 131
        Top = 33
        Width = 142
        Height = 192
        BevelOuter = bvNone
        Color = clWindow
        ParentBackground = False
        TabOrder = 1
        object LabelPBrush: TLabel
          Left = 5
          Top = 73
          Width = 43
          Height = 13
          Caption = #1047#1072#1083#1080#1074#1082#1072
        end
        object LabelPFrame: TLabel
          Left = 5
          Top = 101
          Width = 47
          Height = 13
          Caption = #1054#1073#1074#1086#1076#1082#1072
        end
        object LabelPLines: TLabel
          Left = 5
          Top = 129
          Width = 35
          Height = 13
          Caption = #1051#1080#1085#1080#1080
        end
        object ColorPickerEditorPBrush: TsColorSelect
          Tag = 1
          Left = 60
          Top = 73
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
          OnChange = ColorPickerEditorPBrushChange
          ColorValue = clBlack
        end
        object ColorPickerEditorPFrame: TsColorSelect
          Tag = 2
          Left = 60
          Top = 101
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
          OnChange = ColorPickerEditorPBrushChange
          ColorValue = clBlack
        end
        object ColorPickerEditorPLines: TsColorSelect
          Tag = 3
          Left = 60
          Top = 129
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
          OnChange = ColorPickerEditorPBrushChange
          ColorValue = clBlack
        end
        object CheckBoxPointsLines: TCheckBox
          Tag = 1
          Left = 2
          Top = 0
          Width = 137
          Height = 17
          Caption = #1053#1072#1087#1088#1072#1074#1083#1103#1102#1097#1080#1077' '#1083#1080#1085#1080#1080
          TabOrder = 0
          OnClick = CheckBoxPointsLinesClick
        end
        object CheckBoxPointsName: TCheckBox
          Tag = 2
          Left = 2
          Top = 16
          Width = 65
          Height = 17
          Caption = #1055#1086#1076#1087#1080#1089#1100
          Color = clBtnFace
          ParentColor = False
          TabOrder = 1
          OnClick = CheckBoxPointsLinesClick
        end
        object CheckBoxPointsPoint: TCheckBox
          Tag = 3
          Left = 2
          Top = 32
          Width = 49
          Height = 17
          Caption = #1058#1086#1095#1082#1072
          TabOrder = 2
          OnClick = CheckBoxPointsLinesClick
        end
        object CheckBoxPointsConnect: TCheckBox
          Tag = 4
          Left = 2
          Top = 48
          Width = 81
          Height = 17
          Caption = #1057#1086#1077#1076#1080#1085#1103#1090#1100
          TabOrder = 3
          OnClick = CheckBoxPointsLinesClick
        end
      end
      object ButtonClosePointsPanel: TButton
        Left = 219
        Top = 2
        Width = 49
        Height = 25
        Caption = 'Hide'
        TabOrder = 2
        OnClick = ButtonClosePointsPanelClick
      end
    end
    object PanelInfo: TPanelExt
      Left = 6
      Top = 523
      Width = 89
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'PanelInfo'
      TabOrder = 1
      Visible = False
      OnPaint = PanelInfoPaint
    end
  end
  object PanelSet: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 555
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel: TBevel
      Left = 176
      Top = 0
      Width = 9
      Height = 555
      Align = alRight
      Shape = bsRightLine
      ExplicitHeight = 554
    end
    object LabelStep: TLabel
      Left = 8
      Top = 8
      Width = 111
      Height = 13
      Caption = #1045#1076#1080#1085#1080#1095#1085#1099#1081' '#1086#1090#1088#1077#1079#1086#1082':'
    end
    object ColorPickerEditorBGColor: TsColorSelect
      Left = 9
      Top = 247
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
    object GroupBoxPoints: TGroupBox
      Left = 9
      Top = 40
      Width = 169
      Height = 89
      Caption = #1058#1086#1095#1082#1080
      TabOrder = 0
      object LabelData: TLabel
        Left = 8
        Top = 16
        Width = 99
        Height = 13
        Caption = #1044#1072#1085#1085#1099#1077': (X; Y; '#1048#1084#1103')'
      end
      object ButtonAdd: TButton
        Left = 88
        Top = 56
        Width = 73
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 0
        OnClick = ButtonAddClick
      end
      object EditData: TEdit
        Left = 8
        Top = 32
        Width = 153
        Height = 21
        TabOrder = 1
      end
      object ButtonDelete: TButton
        Left = 8
        Top = 56
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 2
        OnClick = ButtonDeleteClick
      end
    end
    object SpinEditorStep: TSpinEdit
      Left = 9
      Top = 135
      Width = 170
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
    object SpinEditorStepSize: TSpinEdit
      Left = 9
      Top = 163
      Width = 170
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 0
    end
    object SpinEditorPenSize: TSpinEdit
      Left = 9
      Top = 191
      Width = 170
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 3
      Value = 0
    end
    object SpinEditorCFission: TSpinEdit
      Left = 9
      Top = 219
      Width = 170
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 4
      Value = 0
    end
    object PNGButtonPanelHide: TButton
      Left = 131
      Top = 4
      Width = 49
      Height = 25
      Caption = 'Hide'
      TabOrder = 5
      OnClick = PNGButtonPanelHideClick
    end
    object CheckBoxCName: TCheckBox
      Left = 8
      Top = 272
      Width = 97
      Height = 17
      Caption = 'CheckBoxCName'
      TabOrder = 6
      OnClick = CheckBoxCNameClick
    end
    object CheckBoxZPoint: TCheckBox
      Left = 8
      Top = 296
      Width = 97
      Height = 17
      Caption = 'CheckBoxZPoint'
      TabOrder = 7
    end
    object CheckBoxGrid: TCheckBox
      Left = 8
      Top = 319
      Width = 97
      Height = 17
      Caption = 'CheckBoxGrid'
      TabOrder = 8
    end
    object CheckBoxCLines: TCheckBox
      Left = 9
      Top = 342
      Width = 97
      Height = 17
      Caption = 'CheckBoxCLines'
      TabOrder = 9
    end
  end
  object PanelPointTool: TPanelExt
    Left = 184
    Top = 0
    Width = 137
    Height = 73
    TabOrder = 2
    Visible = False
    OnMouseDown = PanelPointsMouseDown
    OnPaint = PanelPointToolPaint
    object EditPointName: TEdit
      Left = 8
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyPress = EditPointNameKeyPress
    end
    object ButtonCloseRenamer: TButton
      Left = 80
      Top = 3
      Width = 49
      Height = 25
      Caption = 'Hide'
      TabOrder = 1
      OnClick = ButtonCloseRenamerClick
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 555
    Width = 881
    Height = 19
    AutoHint = True
    Panels = <
      item
        Width = 300
      end
      item
        Width = 250
      end
      item
        Width = 100
      end>
  end
  object XPManifest: TXPManifest
    Left = 728
    Top = 176
  end
  object TimerUpSpeed: TTimer
    Enabled = False
    OnTimer = TimerUpSpeedTimer
    Left = 729
    Top = 120
  end
  object TimerFPS: TTimer
    OnTimer = TimerFPSTimer
    Left = 625
    Top = 176
  end
  object TimerAutoMove: TTimer
    Enabled = False
    Interval = 1
    OnTimer = TimerAutoMoveTimer
    Left = 625
    Top = 16
  end
  object MainMenu: TMainMenu
    Left = 625
    Top = 64
    object MenuItemFile: TMenuItem
      Caption = #1060#1072#1081#1083
      Default = True
      object MenuItemOpen: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        Enabled = False
      end
      object MenuItemSave: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Enabled = False
      end
      object MenuItemClose: TMenuItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
        Enabled = False
      end
      object MenuItemN5: TMenuItem
        Caption = '-'
      end
      object MenuItemSavePic: TMenuItem
        Action = ActionScreenShot
      end
      object MenuItemN1: TMenuItem
        Caption = '-'
      end
      object MenuItemExit: TMenuItem
        Action = ActionExit
      end
    end
    object MenuItemView: TMenuItem
      Caption = #1042#1080#1076
      OnClick = MenuItemViewClick
      object MenuItemToolBar: TMenuItem
        Caption = #1055#1072#1085#1077#1083#1100' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1086#1074
        Checked = True
        OnClick = MenuItemToolBarClick
      end
      object MenuItemN2: TMenuItem
        Caption = '-'
      end
      object MenuItemCursor: TMenuItem
        AutoCheck = True
        Caption = #1050#1091#1088#1089#1086#1088
        Hint = #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1082#1091#1088#1089#1086#1088
        OnClick = MenuItemCursorClick
      end
      object MenuItemN3: TMenuItem
        Caption = '-'
      end
      object MenuItemGrid: TMenuItem
        AutoCheck = True
        Caption = #1057#1077#1090#1082#1072
        Checked = True
        Hint = #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1089#1077#1090#1082#1091
        OnClick = MenuItemGridClick
      end
      object MenuItemZeroPoint: TMenuItem
        AutoCheck = True
        Caption = #1058#1086#1095#1082#1072' '#1074' '#1094#1077#1085#1090#1088#1077
        Checked = True
        Hint = #1056#1080#1089#1086#1074#1072#1090#1100' '#1090#1086#1095#1082#1091' '#1074' '#1094#1077#1085#1090#1088#1077
        OnClick = MenuItemZeroPointClick
      end
      object MenuItemAdvInf: TMenuItem
        AutoCheck = True
        Caption = #1044#1086#1087'. '#1080#1085#1092'.'
        Hint = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1091#1102' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102
        OnClick = MenuItemAdvInfClick
      end
      object MenuItemN4: TMenuItem
        Caption = '-'
      end
      object MenuItemFullScreen: TMenuItem
        Action = ActionFullScreen
      end
      object MenuItemMM: TMenuItem
        Action = ActionSHMainMenu
      end
    end
    object MenuItemTools: TMenuItem
      Caption = #1048#1085#1089#1090#1088#1091#1084#1077#1085#1090#1099
      OnClick = MenuItemToolsClick
      object MenuItemPointsTool: TMenuItem
        Caption = #1058#1086#1095#1082#1080
        object MenuItemPoints: TMenuItem
          Action = ActionPointGroup
        end
        object MenuItemGroups: TMenuItem
          Action = ActionPointGroupEdit
        end
        object MenuItemN6: TMenuItem
          Caption = '-'
        end
        object MenuItemShowPoints: TMenuItem
          Action = ActionShowPoints
        end
        object MenuItemPolyPoints: TMenuItem
          Action = ActionPointConnect
        end
        object MenuItemN7: TMenuItem
          Caption = '-'
        end
        object MenuItemDeletePoints: TMenuItem
          Action = ActionDeletePointsOfGroup
        end
      end
      object MenuItemFunction: TMenuItem
        Caption = #1043#1088#1072#1092#1080#1082#1080
        object MenuItemFunctions: TMenuItem
          Action = ActionDrawFunctions
        end
        object MenuItemDrawFunction: TMenuItem
          Action = ActionFunctionsEdit
        end
      end
      object MenuItemN8: TMenuItem
        Caption = '-'
      end
      object MenuItemGoToXY1: TMenuItem
        Action = ActionGoToXY
      end
      object MenuItemToZero: TMenuItem
        Action = ActionGoToCenter
      end
    end
    object MenuItemHelp: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      object MenuItemAbout: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        Hint = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = MenuItemAboutClick
      end
    end
  end
  object PopupMenuPoint: TPopupMenu
    Left = 817
    Top = 64
    object MenuItemDeletePoint: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = MenuItemDeletePointClick
    end
    object MenuItemRenamePoint: TMenuItem
      Caption = #1055#1077#1088#1077#1080#1084#1077#1085#1086#1074#1072#1090#1100
      OnClick = MenuItemRenamePointClick
    end
  end
  object TimerStartMove: TTimer
    Enabled = False
    OnTimer = TimerStartMoveTimer
    Left = 817
    Top = 120
  end
  object PopupMenuMain: TPopupMenu
    Left = 729
    Top = 64
  end
  object SavePictureDialogFrame: TSavePictureDialog
    DefaultExt = '*.bmp'
    FileName = 'DSC'
    Filter = #1058#1086#1095#1077#1095#1085#1099#1077' '#1088#1080#1089#1091#1085#1082#1080' (*.bmp)|*.bmp|'#1042#1089#1077' '#1092#1072#1081#1083#1099' (*.*)|*.*'
    Title = #1057#1086#1093#1088#1072#1085#1077#1085#1080#1077' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
    Left = 729
    Top = 16
  end
  object PopupMenuGroups: TPopupMenu
    Left = 625
    Top = 120
    object MenuItemChangeGroup: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
    end
    object MenuItemAddPoint: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1090#1086#1095#1082#1091
    end
  end
  object PopupMenuContext: TPopupMenu
    Left = 817
    Top = 176
    object MenuItemGoToXY: TMenuItem
      Action = ActionGoToXY
    end
    object MenuItemActionGoToCenter: TMenuItem
      Action = ActionGoToCenter
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object MenuItemActionDrawFunctions: TMenuItem
      Action = ActionDrawFunctions
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object MenuItemActionShowPoints: TMenuItem
      Action = ActionShowPoints
    end
    object MenuItemActionPointConnect: TMenuItem
      Action = ActionPointConnect
    end
  end
  object ActionList: TActionList
    Left = 521
    Top = 24
    object ActionScreenShot: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
      OnExecute = ActionScreenShotExecute
    end
    object ActionExit: TAction
      Caption = #1042#1099#1093#1086#1076
      Hint = #1042#1099#1093#1086#1076
      OnExecute = ActionExitExecute
    end
    object ActionFullScreen: TAction
      Caption = #1055#1086#1083#1085#1086#1101#1082#1088#1072#1085#1085#1099#1081' '#1088#1077#1078#1080#1084
      Hint = #1055#1086#1083#1085#1086#1101#1082#1088#1072#1085#1085#1099#1081' '#1088#1077#1078#1080#1084
      OnExecute = ActionFullScreenExecute
    end
    object ActionPointGroup: TAction
      Caption = #1043#1088#1091#1087#1087#1099' '#1090#1086#1095#1077#1082
      Hint = #1043#1088#1091#1087#1087#1099' '#1090#1086#1095#1077#1082
      OnExecute = ActionPointGroupExecute
    end
    object ActionPointGroupEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1075#1088#1091#1087#1087' '#1090#1086#1095#1077#1082
      Hint = #1056#1077#1076#1072#1082#1090#1086#1088' '#1075#1088#1091#1087#1087' '#1090#1086#1095#1077#1082
      OnExecute = ActionPointGroupEditExecute
    end
    object ActionShowPoints: TAction
      Caption = #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1090#1086#1095#1082#1080
      Hint = #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1090#1086#1095#1082#1080
      OnExecute = ActionShowPointsExecute
    end
    object ActionPointConnect: TAction
      Caption = #1057#1086#1077#1076#1080#1085#1103#1090#1100' '#1090#1086#1095#1082#1080
      Hint = #1057#1086#1077#1076#1080#1085#1103#1090#1100' '#1090#1086#1095#1082#1080
      OnExecute = ActionPointConnectExecute
    end
    object ActionDeletePointsOfGroup: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1090#1086#1095#1082#1080' '#1090#1077#1082#1091#1097#1077#1081' '#1075#1088#1091#1087#1087#1099
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1090#1086#1095#1082#1080' '#1090#1077#1082#1091#1097#1077#1081' '#1075#1088#1091#1087#1087#1099
      OnExecute = ActionDeletePointsOfGroupExecute
    end
    object ActionFunctionsEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1075#1088#1072#1092#1080#1082#1080
      OnExecute = ActionFunctionsEditExecute
    end
    object ActionDrawFunctions: TAction
      Caption = #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1075#1088#1072#1092#1080#1082#1080
      Hint = #1056#1080#1089#1086#1074#1072#1090#1100' '#1075#1088#1072#1092#1080#1082#1080' '#1092#1091#1085#1082#1094#1080#1081
      OnExecute = ActionDrawFunctionsExecute
    end
    object ActionGoToCenter: TAction
      Caption = #1062#1077#1085#1090#1088#1080#1088#1086#1074#1072#1090#1100
      Hint = #1062#1077#1085#1090#1088#1080#1088#1086#1074#1072#1090#1100' '#1057#1050
      OnExecute = ActionGoToCenterExecute
    end
    object ActionSHMainMenu: TAction
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1057#1082#1088#1099#1090#1100' '#1075#1083'. '#1084#1077#1085#1102
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1057#1082#1088#1099#1090#1100' '#1075#1083'. '#1084#1077#1085#1102
      OnExecute = ActionSHMainMenuExecute
    end
    object ActionGoToXY: TAction
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082'...'
      Hint = #1055#1077#1088#1077#1081#1090#1080' '#1087#1086' '#1091#1082#1072#1079#1072#1085#1085#1099#1081#1084' '#1082#1086#1086#1088#1076#1080#1085#1072#1090#1072#1084
      OnExecute = ActionGoToXYExecute
    end
  end
  object TimerInfo: TTimer
    Interval = 500
    OnTimer = TimerInfoTimer
    Left = 521
    Top = 80
  end
  object TimerHideInfo: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = TimerHideInfoTimer
    Left = 521
    Top = 128
  end
  object DXTimer: TTimer
    Interval = 10
    OnTimer = DXTimerTimer
    Left = 657
    Top = 264
  end
end
