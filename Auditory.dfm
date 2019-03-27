inherited fmAuditory: TfmAuditory
  Left = 299
  Top = 275
  Caption = #1040#1091#1076#1080#1090#1086#1088#1080#1080
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    inherited tvMain: TcxGridDBTableView
      object tvMainBuilding: TcxGridDBColumn
        Caption = #1050#1086#1088#1087#1091#1089
        DataBinding.FieldName = 'Building'
        Width = 90
      end
      object tvMainObjectCode: TcxGridDBColumn
        Caption = #8470' '#1072#1091#1076'.'
        DataBinding.FieldName = 'ObjectCode'
      end
      object tvMainCathedra: TcxGridDBColumn
        Caption = #1050#1072#1092#1077#1076#1088#1072
        DataBinding.FieldName = 'CathedraCalc'
        PropertiesClassName = 'TcxTextEditProperties'
      end
      object tvMainObjectTechnical: TcxGridDBColumn
        Caption = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1086#1077' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077
        DataBinding.FieldName = 'ObjectTechnical'
      end
      object tvMainObjectSoftware: TcxGridDBColumn
        Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1085#1086#1077' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077
        DataBinding.FieldName = 'ObjectSoftware'
      end
      object tvMainObjectIntId: TcxGridDBColumn
        DataBinding.FieldName = 'ObjectIntId'
        Visible = False
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
      Left = 96
      Top = 28
      Properties.OnChange = cxCodePropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Text = 'cxCode'
      Width = 121
    end
    object cxCathedra: TcxButtonEdit [3]
      Left = 96
      Top = 55
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end
        item
          Caption = 'X'
          Kind = bkText
        end>
      Properties.OnButtonClick = cxCathedraPropertiesButtonClick
      Properties.OnChange = cxCathedraPropertiesChange
      Style.HotTrack = False
      TabOrder = 1
      Text = 'cxCathedra'
      Width = 121
    end
    inherited dxLeftGroup_Root: TdxLayoutGroup
      inherited dxLeftGroup: TdxLayoutGroup
        object dxLeftCode: TdxLayoutItem
          CaptionOptions.Text = #8470' '#1072#1091#1076#1080#1090#1086#1088#1080#1080':'
          Control = cxCode
          ControlOptions.ShowBorder = False
        end
        object dxLeftCathedra: TdxLayoutItem
          CaptionOptions.Text = #1050#1072#1092#1077#1076#1088#1072':'
          Control = cxCathedra
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tAuditory
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
