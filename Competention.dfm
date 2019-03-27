inherited fmCompetention: TfmCompetention
  Width = 1049
  Caption = #1050#1086#1084#1087#1077#1090#1077#1085#1094#1080#1080
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    Width = 725
    inherited tvMain: TcxGridDBTableView
      object tvMainObjectId: TcxGridDBColumn
        DataBinding.FieldName = 'ObjectId'
        Visible = False
      end
      object tvMainObjectIntId: TcxGridDBColumn
        DataBinding.FieldName = 'ObjectIntId'
        Visible = False
      end
      object tvMainTypeCalc: TcxGridDBColumn
        Caption = #1050#1086#1076' '#1090#1080#1087#1072
        DataBinding.FieldName = 'TypeCalc'
        Width = 80
      end
      object tvMainCompetention: TcxGridDBColumn
        Caption = #1058#1080#1087
        DataBinding.FieldName = 'CompetentionTypeCalc'
        Width = 154
      end
      object tvMainRowNumber: TcxGridDBColumn
        Caption = #8470
        DataBinding.FieldName = 'RowNumber'
      end
      object tvMainObjectCode: TcxGridDBColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'ObjectCode'
      end
      object tvMainObjectName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'ObjectName'
        Width = 323
      end
      object tvMainCompetitionTypeId: TcxGridDBColumn
        DataBinding.FieldName = 'CompetitionTypeId'
        Visible = False
      end
    end
  end
  inherited dxLeft: TdxLayoutControl
    inherited cxSearch: TcxButton
      Top = 121
      TabOrder = 3
    end
    inherited cxClear: TcxButton
      Top = 121
      TabOrder = 4
    end
    object cxName: TcxTextEdit [2]
      Left = 111
      Top = 82
      Properties.OnChange = cxNamePropertiesChange
      Style.HotTrack = False
      TabOrder = 2
      Text = 'cxName'
      Width = 121
    end
    object cxCode: TcxTextEdit [3]
      Left = 111
      Top = 55
      Properties.OnChange = cxCodePropertiesChange
      Style.HotTrack = False
      TabOrder = 1
      Text = 'cxCode'
      Width = 121
    end
    object cxType: TcxButtonEdit [4]
      Left = 111
      Top = 28
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end
        item
          Caption = 'X'
          Kind = bkText
        end>
      Properties.OnButtonClick = cxTypePropertiesButtonClick
      Properties.OnChange = cxTypePropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Text = 'cxType'
      Width = 121
    end
    inherited dxLeftGroup_Root: TdxLayoutGroup
      inherited dxLeftGroup: TdxLayoutGroup
        object dxLeftItem2: TdxLayoutItem
          CaptionOptions.Text = #1058#1080#1087':'
          Control = cxType
          ControlOptions.ShowBorder = False
        end
        object dxLeftItem3: TdxLayoutItem
          CaptionOptions.Text = #1050#1086#1076':'
          Control = cxCode
          ControlOptions.ShowBorder = False
        end
        object dxLeftItem1: TdxLayoutItem
          CaptionOptions.Text = #1057#1086#1076#1077#1088#1078#1080#1090' '#1090#1077#1082#1089#1090':'
          Control = cxName
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tCompetention
  end
  inherited ImageList: TImageList
    Left = 712
  end
  inherited Actions: TActionList
    Left = 743
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
