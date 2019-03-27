inherited fmOPOP: TfmOPOP
  Left = 217
  Top = 260
  Width = 1164
  Caption = #1054#1055#1054#1055
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    Width = 840
    inherited tvMain: TcxGridDBTableView
      object tvMainObjectID: TcxGridDBColumn
        DataBinding.FieldName = 'ObjectID'
        Visible = False
      end
      object tvMainObjectIntID: TcxGridDBColumn
        DataBinding.FieldName = 'ObjectIntID'
        Visible = False
      end
      object tvMainObjectCode: TcxGridDBColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'ObjectCode'
        Width = 131
      end
      object tvMainObjectName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'ObjectName'
        Width = 319
      end
      object tvMainYearStart: TcxGridDBColumn
        Caption = #1043#1086#1076' '#1085#1072#1073#1086#1088#1072
        DataBinding.FieldName = 'YearStart'
        Width = 105
      end
      object tvMainYearCount: TcxGridDBColumn
        Caption = #1057#1088#1086#1082' '#1086#1073#1091#1095#1077#1085#1080#1103
        DataBinding.FieldName = 'YearCount'
        Width = 110
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
    DataSet = dmPublic.tOPOP
    Left = 424
    Top = 114
  end
  inherited ImageList: TImageList
    Left = 392
    Top = 114
  end
  inherited Actions: TActionList
    Left = 359
    Top = 114
  end
  inherited cxStyleRepository: TcxStyleRepository
    Left = 462
    Top = 114
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 499
    Top = 113
    DockControlHeights = (
      0
      0
      26
      0)
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 536
    Top = 112
  end
  inherited OpenDialog: TOpenDialog
    Left = 576
    Top = 112
  end
end
