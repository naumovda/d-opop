inherited fmCathedra: TfmCathedra
  Left = 350
  Top = 294
  Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
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
        Width = 114
      end
      object tvMainObjectName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'ObjectName'
        Width = 82
      end
      object tvMainContacts: TcxGridDBColumn
        Caption = #1050#1086#1085#1090#1072#1082#1090#1099
        DataBinding.FieldName = 'Contacts'
        Width = 269
      end
    end
  end
  inherited dxLeft: TdxLayoutControl
    inherited cxSearch: TcxButton
      Top = 94
      TabOrder = 2
    end
    inherited cxClear: TcxButton
      Top = 94
      TabOrder = 3
    end
    object cxCode: TcxTextEdit [2]
      Left = 106
      Top = 28
      Properties.OnChange = cxCodePropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Text = 'cxCode'
      Width = 121
    end
    object cxName: TcxTextEdit [3]
      Left = 106
      Top = 55
      Properties.OnChange = cxNamePropertiesChange
      Style.HotTrack = False
      TabOrder = 1
      Text = 'cxName'
      Width = 121
    end
    inherited dxLeftGroup_Root: TdxLayoutGroup
      inherited dxLeftGroup: TdxLayoutGroup
        object dxLeftItem1: TdxLayoutItem
          CaptionOptions.Text = #1050#1086#1076':'
          Control = cxCode
          ControlOptions.ShowBorder = False
        end
        object dxLeftItem2: TdxLayoutItem
          CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
          Control = cxName
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tCathedra
  end
  inherited Actions: TActionList
    inherited acSearch: TAction
      OnExecute = acSearchExecute
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
  end
end
