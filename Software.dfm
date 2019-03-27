inherited fmSoftware: TfmSoftware
  Left = 322
  Top = 315
  Width = 1036
  Caption = #1057#1087#1080#1089#1086#1082' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1084#1086#1075#1086' '#1087#1088#1086#1075#1088#1072#1084#1084#1085#1086#1075#1086' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1103
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    Width = 712
    inherited tvMain: TcxGridDBTableView
      object tvMainObjectId: TcxGridDBColumn
        DataBinding.FieldName = 'ObjectId'
        Visible = False
      end
      object tvMainObjectIntId: TcxGridDBColumn
        DataBinding.FieldName = 'ObjectIntId'
        Visible = False
      end
      object tvMainIsFree: TcxGridDBColumn
        Caption = #1057#1074#1086#1073#1086#1076#1085#1086#1077' '#1055#1054
        DataBinding.FieldName = 'IsFree'
        Width = 82
      end
      object tvMainObjectCode: TcxGridDBColumn
        Caption = #1057#1086#1082#1088'.'
        DataBinding.FieldName = 'ObjectCode'
        Width = 69
      end
      object tvMainObjectName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'ObjectName'
        Width = 161
      end
      object tvMainObjectLicense: TcxGridDBColumn
        Caption = #1055#1088#1080#1084#1077#1095#1072#1077#1085#1080#1077' ('#1051#1080#1094#1077#1085#1079#1080#1103', '#1088#1077#1078#1080#1084' '#1076#1086#1089#1090#1091#1087#1072')'
        DataBinding.FieldName = 'ObjectLicense'
        Width = 397
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tSoftware
  end
  inherited Actions: TActionList
    Left = 767
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
