inherited fmBuilding: TfmBuilding
  Caption = #1059#1095#1077#1073#1085#1099#1077' '#1082#1086#1088#1087#1091#1089#1072
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    inherited tvMain: TcxGridDBTableView
      object tvMainObjectId: TcxGridDBColumn
        DataBinding.FieldName = 'ObjectId'
        Visible = False
      end
      object tvMainObjectIntId: TcxGridDBColumn
        DataBinding.FieldName = 'ObjectIntId'
        Visible = False
      end
      object tvMainObjectCode: TcxGridDBColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'ObjectCode'
      end
      object tvMainObjectName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'ObjectName'
        Width = 378
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
    DataSet = dmPublic.tBuilding
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
  end
end
