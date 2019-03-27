inherited fmDisciplineTransfer: TfmDisciplineTransfer
  Left = 263
  Top = 96
  Width = 1158
  Height = 748
  Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1072#1084#1080' '#1054#1055#1054#1055
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    Top = 34
    Width = 1142
    Height = 675
    Visible = False
  end
  inherited dxLayout: TdxLayoutControl
    Top = 34
    Width = 1142
    Height = 675
    Align = alClient
    object cxSourceOPOP: TcxDBButtonEdit [0]
      Left = 98
      Top = 28
      DataBinding.DataField = 'ObjectName'
      DataBinding.DataSource = dmPublic.dsOPOP
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxOPOPSourcePropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 0
      Width = 219
    end
    object cxDiscipline: TcxGrid [1]
      Left = 22
      Top = 85
      Width = 399
      Height = 209
      Align = alClient
      TabOrder = 1
      object tvDiscipline: TcxGridDBTableView
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
        DataController.DataSource = dmPublic.dsDiscipline
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
        object tvDisciplineRowNumber: TcxGridDBColumn
          Caption = #8470
          DataBinding.FieldName = 'RowNumber'
          Width = 40
        end
        object tvDisciplineObjectCode: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'ObjectCode'
          Width = 65
        end
        object tvDisciplineObjectName: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'ObjectName'
          Width = 240
        end
      end
      object lvDiscipline: TcxGridLevel
        GridView = tvDiscipline
      end
    end
    object cxSelect: TcxRadioGroup [2]
      Left = 22
      Top = 300
      Caption = #1042#1099#1073#1086#1088' '#1080#1089#1090#1086#1095#1085#1080#1082#1072' '#1076#1072#1085#1085#1099#1093':'
      Properties.Columns = 2
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = #1073#1080#1073#1083#1080#1086#1090#1077#1095#1085#1099#1081' '#1092#1086#1085#1076
          Value = 0
        end
        item
          Caption = #1082#1072#1076#1088#1086#1074#1086#1077' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077
          Value = 1
        end
        item
          Caption = #1072#1091#1076#1080#1090#1086#1088#1085#1099#1081' '#1092#1086#1085#1076
          Value = 2
        end
        item
          Caption = #1087#1088#1086#1075#1088#1072#1084#1084#1085#1086#1077' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077
          Value = 3
        end>
      Properties.OnChange = cxSelectPropertiesChange
      ItemIndex = 0
      TabOrder = 2
      Height = 45
      Width = 387
    end
    object cxDetail: TcxGrid [3]
      Left = 22
      Top = 362
      Width = 495
      Height = 158
      Align = alClient
      TabOrder = 6
      object tvBiblio: TcxGridDBTableView
        Tag = 1
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
        DataController.DataSource = dmPublic.dsDisciplineBooks
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = #1042#1089#1077#1075#1086' '#1082#1085#1080#1075': #0'
            Kind = skCount
            Column = tvMainIsBase
          end>
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
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.FocusRect = False
        OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvMainBook: TcxGridDBColumn
          Caption = #1041#1080#1073#1083#1080#1086#1075#1088#1072#1092#1080#1095#1077#1089#1082#1072#1103' '#1089#1089#1099#1083#1082#1072
          DataBinding.FieldName = 'Book'
          Width = 389
        end
        object tvMainIsBase: TcxGridDBColumn
          Caption = #1054#1089#1085#1086#1074#1085#1072#1103
          DataBinding.FieldName = 'IsBase'
          Width = 95
        end
      end
      object tvPerson: TcxGridDBTableView
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
        DataController.DataSource = dmPublic.dsDisciplinePersons
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
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.FocusRect = False
        OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvPersonPerson: TcxGridDBColumn
          Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
          DataBinding.FieldName = 'Person'
          Width = 217
        end
        object tvPersonIsBaseProfile: TcxGridDBColumn
          Caption = #1055#1088#1086#1092#1080#1083#1100'?'
          DataBinding.FieldName = 'IsBaseProfile'
          Width = 80
        end
        object tvPersonHoursRate: TcxGridDBColumn
          Caption = #1057#1090#1072#1074#1082#1072
          DataBinding.FieldName = 'HoursRate'
        end
        object tvPersonHours: TcxGridDBColumn
          Caption = #1063#1072#1089#1099
          DataBinding.FieldName = 'Hours'
        end
        object tvPersonRatio: TcxGridDBColumn
          Caption = #1050#1058#1059', %'
          DataBinding.FieldName = 'Ratio'
        end
      end
      object tvAuditory: TcxGridDBTableView
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
        DataController.DataSource = dmPublic.dsDisciplineAuditory
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
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.FocusRect = False
        OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvAuditoryAuditory: TcxGridDBColumn
          Caption = #1040#1091#1076#1080#1090#1086#1088#1080#1103
          DataBinding.FieldName = 'Auditory'
          Width = 82
        end
        object tvAuditoryType: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1072#1091#1076#1080#1090#1086#1088#1080#1080
          DataBinding.FieldName = 'Type'
          Width = 345
        end
      end
      object tvSoftware: TcxGridDBTableView
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
        DataController.DataSource = dmPublic.dsDisciplineSoftware
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
        object tvSoftwareRowNumber: TcxGridDBColumn
          Caption = #8470
          DataBinding.FieldName = 'RowNumber'
          Width = 45
        end
        object tvSoftwareSoftware: TcxGridDBColumn
          Caption = #1055#1054
          DataBinding.FieldName = 'Software'
          Width = 221
        end
        object tvSoftwareLicense: TcxGridDBColumn
          Caption = #1051#1080#1094#1077#1085#1079#1080#1103
          DataBinding.FieldName = 'License'
          Width = 60
        end
      end
      object lvDetail: TcxGridLevel
        GridView = tvSoftware
      end
    end
    object cxDestOPOP: TcxDBButtonEdit [4]
      Left = 626
      Top = 28
      DataBinding.DataField = 'ObjectName'
      DataBinding.DataSource = dmPublic.dsDestOPOP
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxOPOPDestinationPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxDisciplineDest: TcxGrid [5]
      Left = 550
      Top = 85
      Width = 573
      Height = 204
      Align = alClient
      TabOrder = 8
      object tvDisciplineDest: TcxGridDBTableView
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
        DataController.DataSource = dmPublic.dsDestDiscipline
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
        object tvDisciplineDestRowNumber: TcxGridDBColumn
          Caption = #8470
          DataBinding.FieldName = 'RowNumber'
        end
        object tvDisciplineDestObjectCode: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'ObjectCode'
          Width = 103
        end
        object tvDisciplineDestObjectName: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'ObjectName'
          Width = 368
        end
      end
      object lvDisciplineDest: TcxGridLevel
        GridView = tvDisciplineDest
      end
    end
    object cxDestination: TcxGrid [6]
      Left = 550
      Top = 325
      Width = 1142
      Height = 84
      Align = alClient
      TabOrder = 9
      object tvBiblioDestination: TcxGridDBTableView
        Tag = 1
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
        DataController.DataSource = dmPublic.dsDestDisciplineBooks
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = #1042#1089#1077#1075#1086' '#1082#1085#1080#1075': #0'
            Kind = skCount
            Column = cxGridDBColumn5
          end>
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
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.FocusRect = False
        OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridDBColumn4: TcxGridDBColumn
          Caption = #1041#1080#1073#1083#1080#1086#1075#1088#1072#1092#1080#1095#1077#1089#1082#1072#1103' '#1089#1089#1099#1083#1082#1072
          DataBinding.FieldName = 'Book'
          Width = 389
        end
        object cxGridDBColumn5: TcxGridDBColumn
          Caption = #1054#1089#1085#1086#1074#1085#1072#1103
          DataBinding.FieldName = 'IsBase'
          Width = 95
        end
      end
      object tvPersonDestination: TcxGridDBTableView
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
        DataController.DataSource = dmPublic.dsDisciplinePersons
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
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.FocusRect = False
        OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridDBColumn6: TcxGridDBColumn
          Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
          DataBinding.FieldName = 'Person'
          Width = 217
        end
        object cxGridDBColumn7: TcxGridDBColumn
          Caption = #1055#1088#1086#1092#1080#1083#1100'?'
          DataBinding.FieldName = 'IsBaseProfile'
          Width = 80
        end
        object cxGridDBColumn8: TcxGridDBColumn
          Caption = #1057#1090#1072#1074#1082#1072
          DataBinding.FieldName = 'HoursRate'
        end
        object cxGridDBColumn9: TcxGridDBColumn
          Caption = #1063#1072#1089#1099
          DataBinding.FieldName = 'Hours'
        end
        object cxGridDBColumn10: TcxGridDBColumn
          Caption = #1050#1058#1059', %'
          DataBinding.FieldName = 'Ratio'
        end
      end
      object tvAuditoryDestination: TcxGridDBTableView
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
        DataController.DataSource = dmPublic.dsDisciplineAuditory
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
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.FocusRect = False
        OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridDBColumn11: TcxGridDBColumn
          Caption = #1040#1091#1076#1080#1090#1086#1088#1080#1103
          DataBinding.FieldName = 'Auditory'
          Width = 153
        end
        object cxGridDBColumn12: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1072#1091#1076#1080#1090#1086#1088#1080#1080
          DataBinding.FieldName = 'Type'
          Width = 589
        end
      end
      object tvSoftwareDestination: TcxGridDBTableView
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
        DataController.DataSource = dmPublic.dsDestDisciplineSoftware
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
        object tvSoftwareDestinationRowNumber: TcxGridDBColumn
          Caption = #8470
          DataBinding.FieldName = 'RowNumber'
        end
        object tvSoftwareDestinationSoftware: TcxGridDBColumn
          Caption = #1055#1054
          DataBinding.FieldName = 'Software'
          Width = 458
        end
      end
      object lvDestination: TcxGridLevel
        GridView = tvSoftwareDestination
      end
    end
    object cxButton1: TcxButton [7]
      Left = 415
      Top = 331
      Width = 50
      Height = 25
      Action = acAddOne
      TabOrder = 4
    end
    object cxButton2: TcxButton [8]
      Left = 471
      Top = 331
      Width = 49
      Height = 25
      Action = acAddDetail
      TabOrder = 5
    end
    object cxButton3: TcxButton [9]
      Left = 415
      Top = 300
      Width = 34
      Height = 25
      Action = acAddAll
      TabOrder = 3
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      object dxLayoutGroup2: TdxLayoutGroup
        CaptionOptions.Text = #1048#1089#1090#1086#1095#1085#1080#1082' '#1076#1072#1085#1085#1099#1093':'
        ButtonOptions.Buttons = <>
        object dxOPOP: TdxLayoutItem
          CaptionOptions.Text = #1042#1099#1073#1086#1088' '#1054#1055#1054#1055':'
          Control = cxSourceOPOP
          ControlOptions.ShowBorder = False
        end
        object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
          CaptionOptions.Text = 'Separator'
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = False
          SizeOptions.SizableVert = False
        end
        object dxLayoutDiscipline: TdxLayoutItem
          CaptionOptions.Text = #1042#1099#1073#1086#1088' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099':'
          CaptionOptions.Layout = clTop
          Control = cxDiscipline
          ControlOptions.ShowBorder = False
        end
        object dxLayoutGroup4: TdxLayoutGroup
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutItem1: TdxLayoutItem
            AlignVert = avClient
            CaptionOptions.Text = 'cxRadioGroup1'
            CaptionOptions.Visible = False
            Control = cxSelect
            ControlOptions.ShowBorder = False
          end
          object dxLayoutGroup5: TdxLayoutGroup
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            object dxLayoutItem7: TdxLayoutItem
              CaptionOptions.Text = 'cxButton3'
              CaptionOptions.Visible = False
              Control = cxButton3
              ControlOptions.ShowBorder = False
            end
            object dxLayoutGroup6: TdxLayoutGroup
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutItem5: TdxLayoutItem
                CaptionOptions.Text = 'cxButton1'
                CaptionOptions.Visible = False
                Control = cxButton1
                ControlOptions.ShowBorder = False
              end
              object dxLayoutItem6: TdxLayoutItem
                CaptionOptions.Text = 'cxButton2'
                CaptionOptions.Visible = False
                Control = cxButton2
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
        object dxLayoutItem2: TdxLayoutItem
          AlignVert = avClient
          Control = cxDetail
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutGroup3: TdxLayoutGroup
        AlignHorz = ahClient
        CaptionOptions.Text = #1055#1088#1080#1077#1084#1085#1080#1082' '#1076#1072#1085#1085#1099#1093':'
        ButtonOptions.Buttons = <>
        object dxLayoutItem3: TdxLayoutItem
          CaptionOptions.Text = #1042#1099#1073#1086#1088' '#1054#1055#1054#1055':'
          Control = cxDestOPOP
          ControlOptions.ShowBorder = False
        end
        object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
          CaptionOptions.Text = 'Separator'
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = False
          SizeOptions.SizableVert = False
        end
        object dxLayoutItem4: TdxLayoutItem
          CaptionOptions.Text = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1099':'
          CaptionOptions.Layout = clTop
          Control = cxDisciplineDest
          ControlOptions.ShowBorder = False
        end
        object dxLayoutSeparatorItem3: TdxLayoutSeparatorItem
          CaptionOptions.Text = 'Separator'
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = False
          SizeOptions.SizableVert = False
        end
        object dxLayoutDestinationDetail: TdxLayoutItem
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = #1055#1088#1080#1077#1084#1085#1080#1082' '#1076#1072#1085#1085#1099#1093':'
          CaptionOptions.Layout = clTop
          Control = cxDestination
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited cxSplitter: TcxSplitter
    Top = 26
    Width = 1142
    Visible = False
  end
  inherited ActionList: TActionList
    inherited acRefresh: TAction
      OnExecute = acRefreshExecute
    end
    object acAddOne: TAction
      Caption = '>'
      OnExecute = acAddOneExecute
    end
    object acAddDetail: TAction
      Caption = '>>'
      OnExecute = acAddDetailExecute
    end
    object acAddAll: TAction
      Caption = '>>>'
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
