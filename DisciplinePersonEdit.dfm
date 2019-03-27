inherited fmDisciplinePersonEdit: TfmDisciplinePersonEdit
  Left = 484
  Top = 235
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1103', '#1074#1077#1076#1091#1097#1077#1075#1086' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1091
  ClientHeight = 297
  ClientWidth = 427
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 281
    Width = 427
    Height = 6
    ClientRectBottom = 9
    ClientRectRight = 423
    ClientRectTop = 9
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 419
      end
      inherited Grid: TcxGrid
        Width = 419
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Width = 427
    Height = 281
    object cxPerson: TcxDBButtonEdit [0]
      Left = 157
      Top = 174
      DataBinding.DataField = 'Person'
      DataBinding.DataSource = DSMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end
        item
          Caption = 'X'
          Kind = bkText
        end>
      Properties.LookupItems.Strings = (
        '1'
        '2'
        '3')
      Properties.OnButtonClick = cxPersonPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 6
      Width = 385
    end
    object cxHour: TcxDBCalcEdit [1]
      Left = 157
      Top = 28
      DataBinding.DataField = 'Hours'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxHourTotal: TcxDBCalcEdit [2]
      Left = 157
      Top = 90
      DataBinding.DataField = 'HourStaff'
      DataBinding.DataSource = dmPublic.dsDiscipline
      Properties.ReadOnly = True
      Style.Color = clMenu
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxRestHour: TcxDBCalcEdit [3]
      Left = 157
      Top = 117
      DataBinding.DataField = 'HourRest'
      DataBinding.DataSource = dmPublic.dsDiscipline
      Properties.ReadOnly = True
      Style.Color = clMenu
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxDBCheckBox1: TcxDBCheckBox [4]
      Left = 157
      Top = 228
      DataBinding.DataField = 'IsBaseProfile'
      DataBinding.DataSource = DSMaster
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 8
      Width = 60
    end
    object cxRatio: TcxDBCalcEdit [5]
      Left = 157
      Top = 59
      DataBinding.DataField = 'Ratio'
      DataBinding.DataSource = DSMaster
      Properties.ReadOnly = True
      Style.Color = clMenuBar
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxFillHours: TcxButton [6]
      Left = 284
      Top = 28
      Width = 75
      Height = 25
      Action = acFillHours
      TabOrder = 1
    end
    object cxButton1: TcxButton [7]
      Left = 284
      Top = 59
      Width = 75
      Height = 25
      Action = acCalc
      TabOrder = 3
    end
    object cxHoursRate: TcxDBCalcEdit [8]
      Left = 157
      Top = 201
      DataBinding.DataField = 'HoursRate'
      DataBinding.DataSource = DSMaster
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxButton2: TcxButton [9]
      Left = 284
      Top = 201
      Width = 75
      Height = 25
      Action = acGetHoursRate
      TabOrder = 9
    end
    inherited dxLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      object dxLayoutGroup1: TdxLayoutGroup
        CaptionOptions.Text = #1056#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1095#1072#1089#1086#1074
        ButtonOptions.Buttons = <>
        object dxLayoutGroup3: TdxLayoutGroup
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutItem2: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.Text = #1063#1072#1089#1086#1074':'
            Control = cxHour
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem7: TdxLayoutItem
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = cxFillHours
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutGroup4: TdxLayoutGroup
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutItem6: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.Text = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090' '#1058#1059':'
            Control = cxRatio
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem8: TdxLayoutItem
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = cxButton1
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutItem3: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = #1042#1089#1077#1075#1086' '#1087#1086' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1077':'
          Control = cxHourTotal
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem4: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = #1048#1079' '#1085#1080#1093' '#1085#1077' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1086':'
          Control = cxRestHour
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutGroup2: TdxLayoutGroup
        CaptionOptions.Text = #1042#1077#1076#1091#1097#1080#1081' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1091
        ButtonOptions.Buttons = <>
        object dxLayoutItem1: TdxLayoutItem
          CaptionOptions.Text = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100':'
          Control = cxPerson
          ControlOptions.ShowBorder = False
        end
        object dxLayoutGroup5: TdxLayoutGroup
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutGroup6: TdxLayoutGroup
            AlignHorz = ahLeft
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            object dxLayoutItem9: TdxLayoutItem
              AlignHorz = ahLeft
              CaptionOptions.Text = #1057#1090#1072#1074#1082#1072', '#1095#1072#1089#1086#1074':'
              Control = cxHoursRate
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem5: TdxLayoutItem
              AlignHorz = ahClient
              CaptionOptions.Text = #1055#1088#1086#1092#1080#1083#1100#1085#1072#1103' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1072':'
              Control = cxDBCheckBox1
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutItem10: TdxLayoutItem
            CaptionOptions.Text = 'cxButton2'
            CaptionOptions.Visible = False
            Control = cxButton2
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      CaptionOptions.Text = 'Separator'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tDisciplinePersons
  end
  inherited ActionList: TActionList
    object acFillHours: TAction
      Caption = '<-'
      OnExecute = acFillHoursExecute
    end
    object acCalc: TAction
      Caption = '='
      OnExecute = acCalcExecute
    end
    object acGetHoursRate: TAction
      Caption = '<-'
      OnExecute = acGetHoursRateExecute
    end
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    DockControlHeights = (
      0
      0
      0
      26)
    inherited dxButtons: TdxBar
      DockedLeft = 100
    end
  end
end
