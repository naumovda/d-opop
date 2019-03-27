inherited fmDegree: TfmDegree
  Left = 281
  Top = 317
  Width = 1027
  Caption = #1059#1095#1077#1085#1099#1077' '#1089#1090#1077#1087#1077#1085#1080
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    Width = 703
    inherited tvMain: TcxGridDBTableView
      object tvMainObjectID: TcxGridDBColumn
        DataBinding.FieldName = 'ObjectID'
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
        Width = 82
      end
      object tvMainIsDegreeExist: TcxGridDBColumn
        Caption = #1057#1090#1077#1087#1077#1085#1100' '#1091#1095#1080#1090#1099#1074#1072#1077#1090#1089#1103
        DataBinding.FieldName = 'IsDegreeExist'
        Width = 82
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
    DataSet = dmPublic.tDegree
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
