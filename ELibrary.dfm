inherited fmLibrary: TfmLibrary
  Caption = #1041#1080#1073#1083#1080#1086#1090#1077#1095#1085#1099#1077' '#1089#1080#1089#1090#1077#1084#1099
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
        Width = 93
      end
      object tvMainObjectName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'ObjectName'
        Width = 174
      end
      object tvMainObjectURL: TcxGridDBColumn
        Caption = 'URL'
        DataBinding.FieldName = 'ObjectURL'
        Width = 201
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
    DataSet = dmPublic.tLibrary
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
