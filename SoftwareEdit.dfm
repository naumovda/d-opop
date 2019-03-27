inherited fmSoftwareEdit: TfmSoftwareEdit
  Left = 446
  Top = 275
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1055#1054
  ClientHeight = 229
  ClientWidth = 564
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 217
    Width = 564
    Height = 157
    ClientRectBottom = 153
    ClientRectRight = 560
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 556
      end
      inherited Grid: TcxGrid
        Width = 556
        Height = 103
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Width = 564
    Height = 217
    object cxCode: TcxDBTextEdit [0]
      Left = 94
      Top = 10
      DataBinding.DataField = 'ObjectCode'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 0
      Width = 119
    end
    object cxName: TcxDBTextEdit [1]
      Left = 94
      Top = 37
      DataBinding.DataField = 'ObjectName'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxIsFree: TcxDBCheckBox [2]
      Left = 351
      Top = 10
      DataBinding.DataField = 'IsFree'
      DataBinding.DataSource = DSMaster
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 1
      Width = 332
    end
    object cxLicense: TcxDBMemo [3]
      Left = 10
      Top = 82
      DataBinding.DataField = 'ObjectLicense'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 3
      Height = 89
      Width = 185
    end
    inherited dxLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      object dxLayoutGroup1: TdxLayoutGroup
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutItem1: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = #1057#1086#1082#1088'. '#1085#1072#1080#1084'.:'
          Control = cxCode
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem3: TdxLayoutItem
          AlignHorz = ahClient
          CaptionOptions.Text = #1103#1074#1083#1103#1077#1090#1089#1103' '#1089#1074#1086#1073#1086#1076#1085#1099#1084' '#1055#1054
          Control = cxIsFree
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutItem2: TdxLayoutItem
        AlignHorz = ahClient
        CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
        Control = cxName
        ControlOptions.ShowBorder = False
      end
      object dxLayoutItem4: TdxLayoutItem
        CaptionOptions.Text = #1051#1080#1094#1077#1085#1079#1080#1103' '#1080#1083#1080' '#1088#1077#1078#1080#1084' '#1076#1086#1089#1090#1091#1087#1072' '#1076#1083#1103' '#1089#1074#1086#1073#1086#1076#1085#1086#1075#1086' '#1055#1054':'
        CaptionOptions.Layout = clTop
        Control = cxLicense
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tSoftware
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
      DockedLeft = 181
    end
  end
end
