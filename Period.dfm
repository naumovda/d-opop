inherited fmPeriod: TfmPeriod
  Left = 180
  Top = 270
  Caption = #1059#1095#1077#1073#1085#1099#1077' '#1075#1086#1076#1072
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    inherited tvMain: TcxGridDBTableView
      object tvMainObjectName: TcxGridDBColumn
        Caption = #1059#1095#1077#1073#1085#1099#1081' '#1075#1086#1076
        DataBinding.FieldName = 'ObjectName'
      end
      object tvMainIsCurrent: TcxGridDBColumn
        Caption = #1058#1077#1082#1091#1097#1080#1081
        DataBinding.FieldName = 'IsCurrent'
        Width = 76
      end
    end
  end
  inherited dxLeft: TdxLayoutControl
    Visible = False
  end
  inherited cxSplitterMain: TcxSplitter
    Visible = False
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tPeriod
  end
  inherited Actions: TActionList
    object acSetCurrent: TAction
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1090#1077#1082#1091#1097#1080#1084
      ImageIndex = 9
      OnExecute = acSetCurrentExecute
    end
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockControlHeights = (
      0
      0
      26
      0)
    inherited dxBarManagerBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxNew'
        end
        item
          Visible = True
          ItemName = 'dxEdit'
        end
        item
          Visible = True
          ItemName = 'dxDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end>
    end
    object dxBarButton1: TdxBarButton
      Action = acSetCurrent
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
end
