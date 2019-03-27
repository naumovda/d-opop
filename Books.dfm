inherited fmBooks: TfmBooks
  Left = 208
  Top = 281
  Width = 1087
  Caption = #1041#1080#1073#1083#1080#1086#1075#1088#1072#1092#1080#1095#1077#1089#1082#1080#1081' '#1089#1087#1080#1089#1086#1082
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    Width = 763
    inherited tvMain: TcxGridDBTableView
      object tvMainObjectID: TcxGridDBColumn
        DataBinding.FieldName = 'ObjectID'
        Visible = False
      end
      object tvMainObjectIntID: TcxGridDBColumn
        DataBinding.FieldName = 'ObjectIntID'
        Visible = False
      end
      object tvMainBiblioDescription: TcxGridDBColumn
        Caption = #1041#1080#1073#1083#1080#1086#1075#1088#1072#1092#1080#1095#1077#1089#1082#1072#1103' '#1089#1089#1099#1083#1082#1072
        DataBinding.FieldName = 'BiblioDescription'
        Width = 496
      end
      object tvMainBooksCount: TcxGridDBColumn
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        DataBinding.FieldName = 'BooksCount'
        Width = 94
      end
      object tvMainExistInELibrary: TcxGridDBColumn
        Caption = #1045#1089#1090#1100' '#1074' '#1069#1041#1057
        DataBinding.FieldName = 'ExistInELibrary'
        Width = 92
      end
      object tvMainELibrary: TcxGridDBColumn
        DataBinding.FieldName = 'ELibrary'
      end
    end
  end
  inherited dxLeft: TdxLayoutControl
    inherited cxSearch: TcxButton
      Left = 65
      Top = 178
      TabOrder = 2
    end
    inherited cxClear: TcxButton
      Left = 160
      Top = 178
      Width = 130
      TabOrder = 3
    end
    object cxName: TcxTextEdit [2]
      Left = 77
      Top = 28
      Properties.OnChange = cxNamePropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Text = 'cxName'
      Width = 121
    end
    object cxIsELib: TcxRadioGroup [3]
      Left = 22
      Top = 55
      Caption = #1053#1072#1083#1080#1095#1080#1077' '#1074' '#1101#1083#1077#1082#1090#1088#1086#1085#1085#1086#1081' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1077
      Properties.DefaultValue = 0
      Properties.Items = <
        item
          Caption = #1085#1077' '#1074#1072#1078#1085#1086
          Value = 0
        end
        item
          Caption = #1076#1072
          Value = 1
        end
        item
          Caption = #1085#1077#1090
          Value = 2
        end>
      Properties.OnChange = cxIsELibPropertiesChange
      ItemIndex = 0
      TabOrder = 1
      Height = 105
      Width = 185
    end
    inherited dxLeftGroup_Root: TdxLayoutGroup
      inherited dxLeftGroup: TdxLayoutGroup
        object dxLeftName: TdxLayoutItem
          CaptionOptions.Text = #1053#1072#1079#1074#1072#1085#1080#1077
          Control = cxName
          ControlOptions.ShowBorder = False
        end
        object dxLeftIsELib: TdxLayoutItem
          CaptionOptions.Text = 'cxRadioGroup1'
          CaptionOptions.Visible = False
          Control = cxIsELib
          ControlOptions.ShowBorder = False
        end
      end
      inherited dxLeftButtonGroup: TdxLayoutGroup
        inherited dxLeftSearch: TdxLayoutItem
          Visible = False
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tBooks
    Left = 72
    Top = 250
  end
  inherited ImageList: TImageList
    Left = 40
    Top = 250
  end
  inherited Actions: TActionList
    Left = 7
    Top = 250
    inherited acSearch: TAction
      OnExecute = acSearchExecute
    end
    inherited acImport: TAction
      OnExecute = acImportExecute
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    Left = 110
    Top = 250
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 147
    Top = 249
    DockControlHeights = (
      0
      0
      26
      0)
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 184
    Top = 248
  end
  inherited OpenDialog: TOpenDialog
    Filter = '*.xls|'#1060#1072#1081#1083#1099' Excel|*.*|'#1042#1089#1077' '#1092#1072#1081#1083#1099
    Left = 224
    Top = 248
  end
end
