inherited fmAuditoryEdit: TfmAuditoryEdit
  Left = 332
  Top = 150
  Caption = #1040#1091#1076#1080#1090#1086#1088#1080#1103
  ClientHeight = 593
  ClientWidth = 761
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 337
    Width = 761
    Height = 230
    TabOrder = 1
    ClientRectBottom = 226
    ClientRectRight = 757
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 753
      end
      inherited Grid: TcxGrid
        Width = 753
        Height = 176
        inherited tvMain: TcxGridDBTableView
          object tvMainRowNumber: TcxGridDBColumn
            Caption = #8470' '#1087'/'#1087
            DataBinding.FieldName = 'RowNumber'
          end
          object tvMainSoftware: TcxGridDBColumn
            Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1085#1086#1077' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077
            DataBinding.FieldName = 'Software'
            Width = 603
          end
        end
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Width = 761
    Height = 337
    object cxNumber: TcxDBTextEdit [0]
      Left = 107
      Top = 10
      DataBinding.DataField = 'ObjectCode'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxMTO: TcxDBMemo [1]
      Left = 10
      Top = 55
      DataBinding.DataField = 'ObjectTechnical'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 3
      Height = 98
      Width = 185
    end
    object cxSoftware: TcxDBMemo [2]
      Left = 10
      Top = 177
      DataBinding.DataField = 'ObjectSoftware'
      DataBinding.DataSource = DSMaster
      Properties.ReadOnly = True
      Style.Color = clMenuBar
      Style.HotTrack = False
      TabOrder = 4
      Height = 120
      Width = 185
    end
    object cxCathedra: TcxDBButtonEdit [3]
      Left = 287
      Top = 10
      DataBinding.DataField = 'Cathedra'
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
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxCathedraPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 1
      Width = 192
    end
    object cxButton1: TcxButton [4]
      Left = 10
      Top = 303
      Width = 75
      Height = 25
      Action = acFillSoftware
      TabOrder = 5
    end
    object cxBuilding: TcxDBButtonEdit [5]
      Left = 529
      Top = 10
      DataBinding.DataField = 'Building'
      DataBinding.DataSource = DSMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxBuildingPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    inherited dxLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      object dxLayoutGroup1: TdxLayoutGroup
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutItem1: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = #1053#1086#1084#1077#1088' '#1072#1091#1076#1080#1090#1086#1088#1080#1080':'
          Control = cxNumber
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem4: TdxLayoutItem
          CaptionOptions.Text = #1050#1072#1092#1077#1076#1088#1072':'
          Control = cxCathedra
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem6: TdxLayoutItem
          AlignHorz = ahClient
          CaptionOptions.Text = #1050#1086#1088#1087#1091#1089':'
          Control = cxBuilding
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutItem2: TdxLayoutItem
        CaptionOptions.Text = 
          #1054#1089#1085#1072#1097#1077#1085#1085#1086#1089#1090#1100' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1099#1093' '#1087#1086#1084#1077#1097#1077#1085#1080#1081' '#1080' '#1087#1086#1084#1077#1097#1077#1085#1080#1081' '#1076#1083#1103' '#1089#1072#1084#1086#1089#1090#1086#1103#1090#1077#1083#1100#1085 +
          #1086#1081' '#1088#1072#1073#1086#1090#1099
        CaptionOptions.Layout = clTop
        Control = cxMTO
        ControlOptions.ShowBorder = False
      end
      object dxLayoutItem3: TdxLayoutItem
        CaptionOptions.Text = 
          #1055#1077#1088#1077#1095#1077#1085#1100' '#1083#1080#1094#1077#1085#1079#1080#1088#1086#1074#1072#1085#1085#1086#1075#1086' '#1087#1088#1086#1075#1088#1072#1084#1084#1085#1086#1075#1086' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1103'. '#1056#1077#1082#1074#1080#1079#1080#1090#1099' '#1087#1086 +
          #1076#1090#1074#1077#1088#1078#1076#1072#1102#1097#1077#1075#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        CaptionOptions.Layout = clTop
        Control = cxSoftware
        ControlOptions.ShowBorder = False
      end
      object dxLayoutItem5: TdxLayoutItem
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = cxButton1
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tAuditorySoftware
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tAuditory
  end
  inherited ActionList: TActionList
    inherited acPasteDetail: TAction
      OnExecute = acPasteDetailExecute
    end
    object acFillSoftware: TAction
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1089#1090' '#1087#1086' '#1087#1088#1086#1075#1088#1072#1084#1084#1085#1086#1084#1091' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1102
      OnExecute = acFillSoftwareExecute
    end
    object acSelect: TAction
      Caption = #1055#1086#1076#1073#1086#1088
      OnExecute = acSelectExecute
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
      DockedLeft = 378
    end
    inherited dxBarManagerBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarCopy'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarCopyDetail'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarPasteDetail'
        end>
    end
    object dxBarButton7: TdxBarButton [16]
      Action = acSelect
      Category = 0
    end
  end
end
