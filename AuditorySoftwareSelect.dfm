inherited fmAuditorySoftwareSelect: TfmAuditorySoftwareSelect
  Left = 477
  Top = 214
  Caption = #1055#1086#1076#1073#1086#1088' '#1055#1054' '#1076#1083#1103' '#1072#1091#1076#1080#1090#1086#1088#1080#1080
  ClientHeight = 463
  ClientWidth = 824
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 233
    Width = 824
    Height = 204
    ClientRectBottom = 200
    ClientRectRight = 820
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 816
      end
      inherited Grid: TcxGrid
        Width = 816
        Height = 150
        inherited tvMain: TcxGridDBTableView
          object tvMainRowNumber: TcxGridDBColumn
            Caption = #8470
            DataBinding.FieldName = 'RowNumber'
          end
          object tvMainSoftware: TcxGridDBColumn
            Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1085#1086#1077' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077
            DataBinding.FieldName = 'Software'
            Width = 404
          end
        end
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Width = 824
    Height = 233
    object cxSelect: TcxGrid [0]
      Left = 10
      Top = 10
      Width = 712
      Height = 199
      Align = alClient
      TabOrder = 0
      object tvSelect: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = True
        NavigatorButtons.PriorPage.Visible = True
        NavigatorButtons.Prior.Visible = True
        NavigatorButtons.Next.Visible = True
        NavigatorButtons.NextPage.Visible = True
        NavigatorButtons.Last.Visible = True
        NavigatorButtons.Insert.Visible = True
        NavigatorButtons.Append.Visible = False
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = True
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = True
        NavigatorButtons.GotoBookmark.Visible = True
        NavigatorButtons.Filter.Visible = True
        OnCellDblClick = tvSelectCellDblClick
        DataController.DataSource = dmPublic.dsSoftware
        DataController.Filter.Options = [fcoCaseInsensitive, fcoSoftNull, fcoSoftCompare]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnMRUItemsList = False
        Filtering.ColumnPopup.MaxDropDownItemCount = 0
        Filtering.ColumnPopup.MultiSelect = False
        FilterRow.InfoText = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1092#1080#1083#1100#1090#1088#1072
        NewItemRow.InfoText = #1044#1086#1073#1072#1074#1080#1090#1100
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.IncSearch = True
        OptionsBehavior.ExpandMasterRowOnDblClick = False
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.FocusRect = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
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
      object lvSelect: TcxGridLevel
        GridView = tvSelect
      end
    end
    inherited dxLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      object dxLayoutItem1: TdxLayoutItem
        Control = cxSelect
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tAuditorySoftware
    Left = 176
    Top = 136
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tAuditory
    Left = 208
    Top = 136
  end
  inherited ActionList: TActionList
    Left = 240
    Top = 136
  end
  inherited ImageList: TImageList
    Left = 144
    Top = 138
  end
  inherited cxStyleRep: TcxStyleRepository
    Left = 272
    Top = 136
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    Left = 304
    Top = 136
    DockControlHeights = (
      0
      0
      0
      26)
    inherited dxButtons: TdxBar
      DockedLeft = 441
    end
  end
  inherited dxBarDB: TdxBarDBNavigator
    Left = 344
    Top = 137
  end
end
