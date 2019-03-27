inherited fmDisciplineEdit: TfmDisciplineEdit
  Left = 345
  Top = 63
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099
  ClientHeight = 741
  ClientWidth = 791
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 393
    Width = 791
    Height = 322
    ClientRectBottom = 318
    ClientRectRight = 787
    inherited cxTable: TcxTabSheet
      Caption = #1051#1080#1090#1077#1088#1072#1090#1091#1088#1072' '#1087#1086' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1077
      inherited dxBarDockControl: TdxBarDockControl
        Width = 783
        Height = 46
      end
      inherited Grid: TcxGrid
        Top = 46
        Width = 783
        Height = 248
        inherited tvMain: TcxGridDBTableView
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #1042#1089#1077#1075#1086' '#1082#1085#1080#1075': #0'
              Kind = skCount
              Column = tvMainIsBase
            end>
          OptionsView.Footer = True
          object tvMainBook: TcxGridDBColumn
            Caption = #1041#1080#1073#1083#1080#1086#1075#1088#1072#1092#1080#1095#1077#1089#1082#1072#1103' '#1089#1089#1099#1083#1082#1072
            DataBinding.FieldName = 'Book'
            Width = 620
          end
          object tvMainIsBase: TcxGridDBColumn
            Caption = #1054#1089#1085#1086#1074#1085#1072#1103
            DataBinding.FieldName = 'IsBase'
            Width = 95
          end
        end
        object tvPerson: TcxGridDBTableView [1]
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
          OnCellDblClick = tvMainCellDblClick
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
          Styles.Selection = cxStyleSel
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
        object tvAuditory: TcxGridDBTableView [2]
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
          OnCellDblClick = tvMainCellDblClick
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
          Styles.Selection = cxStyleSel
          object tvAuditoryAuditory: TcxGridDBColumn
            Caption = #1040#1091#1076#1080#1090#1086#1088#1080#1103
            DataBinding.FieldName = 'Auditory'
            Width = 153
          end
          object tvAuditoryType: TcxGridDBColumn
            Caption = #1058#1080#1087' '#1072#1091#1076#1080#1090#1086#1088#1080#1080
            DataBinding.FieldName = 'Type'
            Width = 589
          end
        end
        object tvSoftware: TcxGridDBTableView [3]
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
          OnCellDblClick = tvMainCellDblClick
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
          Styles.Selection = cxStyleSel
          object tvSoftwareRowNumber: TcxGridDBColumn
            Caption = #8470
            DataBinding.FieldName = 'RowNumber'
          end
          object tvSoftwareSoftware: TcxGridDBColumn
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1086#1075#1088#1072#1084#1084#1085#1086#1075#1086' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1103
            DataBinding.FieldName = 'Software'
            Width = 665
          end
        end
        object tvCompetention: TcxGridDBTableView [4]
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
          OnCellDblClick = tvMainCellDblClick
          DataController.DataSource = dmPublic.dsDisciplineCompetention
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
          Preview.Column = tvCompetentionDescription
          Preview.MaxLineCount = 5
          Preview.Visible = True
          Styles.Selection = cxStyleSel
          object tvCompetentionCompetention: TcxGridDBColumn
            Caption = #1050#1086#1084#1087#1077#1090#1077#1085#1094#1080#1103
            DataBinding.FieldName = 'Competention'
            Width = 746
          end
          object tvCompetentionDescription: TcxGridDBColumn
            Caption = #1057#1086#1076#1077#1088#1078#1072#1085#1080#1077
            DataBinding.FieldName = 'Description'
            Width = 620
          end
        end
        inherited lvMain: TcxGridLevel
          GridView = tvCompetention
        end
      end
    end
    object cxTabGoal: TcxTabSheet
      Caption = #1062#1077#1083#1100
      ImageIndex = 1
      object cxDBGoal: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'GoalText'
        DataBinding.DataSource = DSMaster
        TabOrder = 0
        Height = 294
        Width = 783
      end
    end
    object cxTabTask: TcxTabSheet
      Caption = #1047#1072#1076#1072#1095#1080
      ImageIndex = 2
      object cxDBMemo1: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'TaskText'
        DataBinding.DataSource = DSMaster
        TabOrder = 0
        Height = 294
        Width = 783
      end
    end
    object cxTabContent: TcxTabSheet
      Caption = #1057#1086#1076#1077#1088#1078#1072#1085#1080#1077
      ImageIndex = 3
      object cxDBContent: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'ContentText'
        DataBinding.DataSource = DSMaster
        TabOrder = 0
        Height = 294
        Width = 783
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = #1047#1085#1072#1085#1080#1103
      ImageIndex = 4
      object cxDBKnow: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'KnowText'
        DataBinding.DataSource = DSMaster
        TabOrder = 0
        Height = 294
        Width = 783
      end
    end
    object cxTabCan: TcxTabSheet
      Caption = #1059#1084#1077#1085#1080#1103
      ImageIndex = 5
      object cxDBCan: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'CanDoText'
        DataBinding.DataSource = DSMaster
        TabOrder = 0
        Height = 294
        Width = 783
      end
    end
    object cxTabSkill: TcxTabSheet
      Caption = #1053#1072#1074#1099#1082#1080
      ImageIndex = 6
      object cxDBSkill: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'SkillText'
        DataBinding.DataSource = DSMaster
        TabOrder = 0
        Height = 294
        Width = 783
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Width = 791
    Height = 393
    object cxCode: TcxDBTextEdit [0]
      Left = 126
      Top = 28
      DataBinding.DataField = 'ObjectCode'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxName: TcxDBTextEdit [1]
      Left = 126
      Top = 55
      DataBinding.DataField = 'ObjectName'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 2
      Width = 347
    end
    object cxDB01: TcxDBCalcEdit [2]
      Left = 126
      Top = 139
      DataBinding.DataField = 'UnitCount'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDB02: TcxDBCalcEdit [3]
      Left = 126
      Top = 166
      DataBinding.DataField = 'HourTotal'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object cxDB03: TcxDBTextEdit [4]
      Left = 126
      Top = 262
      DataBinding.DataField = 'CourseExam'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 10
      Width = 179
    end
    object cxDB04: TcxDBTextEdit [5]
      Left = 126
      Top = 289
      DataBinding.DataField = 'CourseValid'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 12
      Width = 179
    end
    object cxDB05: TcxDBTextEdit [6]
      Left = 126
      Top = 316
      DataBinding.DataField = 'CourseProject'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 14
      Width = 179
    end
    object cxDB06: TcxDBTextEdit [7]
      Left = 126
      Top = 343
      DataBinding.DataField = 'CourseWord'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 16
      Width = 179
    end
    object cxDBCalcEdit1: TcxDBCalcEdit [8]
      Left = 648
      Top = 28
      DataBinding.DataField = 'HourClass'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 18
      Width = 121
    end
    object cxDBCalcEdit2: TcxDBCalcEdit [9]
      Left = 648
      Top = 55
      DataBinding.DataField = 'HourClassLection'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 19
      Width = 121
    end
    object cxDBCalcEdit3: TcxDBCalcEdit [10]
      Left = 648
      Top = 82
      DataBinding.DataField = 'HourClassLaboratory'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 20
      Width = 121
    end
    object cxDBCalcEdit4: TcxDBCalcEdit [11]
      Left = 648
      Top = 109
      DataBinding.DataField = 'HourClassPractice'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 21
      Width = 121
    end
    object cxDBCalcEdit5: TcxDBCalcEdit [12]
      Left = 648
      Top = 166
      DataBinding.DataField = 'HourSelf'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 22
      Width = 121
    end
    object cxDBCalcEdit6: TcxDBCalcEdit [13]
      Left = 648
      Top = 193
      DataBinding.DataField = 'HourSelfCourseProject'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 23
      Width = 121
    end
    object cxDBCalcEdit7: TcxDBCalcEdit [14]
      Left = 648
      Top = 220
      DataBinding.DataField = 'HourSelfCourseWork'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 24
      Width = 121
    end
    object cxDBCalcEdit8: TcxDBCalcEdit [15]
      Left = 648
      Top = 247
      DataBinding.DataField = 'HourSelfExam'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 25
      Width = 121
    end
    object cxDBCalcEdit9: TcxDBCalcEdit [16]
      Left = 648
      Top = 274
      DataBinding.DataField = 'HourSelfConsult'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 26
      Width = 121
    end
    object cxDBCalcEdit10: TcxDBCalcEdit [17]
      Left = 648
      Top = 301
      DataBinding.DataField = 'HourSelfWork'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 27
      Width = 121
    end
    object cxDBCalcEdit11: TcxDBCalcEdit [18]
      Left = 341
      Top = 262
      DataBinding.DataField = 'ExamCount'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object cxDBCalcEdit12: TcxDBCalcEdit [19]
      Left = 341
      Top = 289
      DataBinding.DataField = 'ValidCount'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 13
      Width = 121
    end
    object cxDBCalcEdit13: TcxDBCalcEdit [20]
      Left = 341
      Top = 316
      DataBinding.DataField = 'CourseProjectCount'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 15
      Width = 121
    end
    object cxDBCalcEdit14: TcxDBCalcEdit [21]
      Left = 341
      Top = 343
      DataBinding.DataField = 'CourseWorkCount'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 17
      Width = 121
    end
    object cxDBCheckBox1: TcxDBCheckBox [22]
      Left = 373
      Top = 139
      DataBinding.DataField = 'IsPractic'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxDBCalcEdit15: TcxDBCalcEdit [23]
      Left = 373
      Top = 166
      DataBinding.DataField = 'HourPractic'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxDBCalcEdit16: TcxDBCalcEdit [24]
      Left = 126
      Top = 205
      DataBinding.DataField = 'HourStaff'
      DataBinding.DataSource = DSMaster
      Style.Color = clMenuBar
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object cxDBCalcEdit17: TcxDBCalcEdit [25]
      Left = 373
      Top = 205
      DataBinding.DataField = 'HourRest'
      DataBinding.DataSource = DSMaster
      Style.Color = clMenuBar
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object cxCathedra: TcxDBButtonEdit [26]
      Left = 126
      Top = 82
      DataBinding.DataField = 'Cathedra'
      DataBinding.DataSource = DSMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxCathedraPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxRow: TcxDBSpinEdit [27]
      Left = 373
      Top = 28
      DataBinding.DataField = 'RowNumber'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    inherited dxLayoutGroup_Root: TdxLayoutGroup
      object dxLayoutGroup9: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutGroup6: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          object dxLayoutGroup2: TdxLayoutGroup
            CaptionOptions.Text = #1056#1077#1082#1074#1080#1079#1080#1090#1099' '#1076#1080#1089#1080#1094#1087#1083#1080#1085#1099
            ButtonOptions.Buttons = <>
            object dxLayoutGroup16: TdxLayoutGroup
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutCode: TdxLayoutItem
                AlignHorz = ahLeft
                CaptionOptions.Text = #1050#1086#1076':'
                Control = cxCode
                ControlOptions.ShowBorder = False
              end
              object dxLayoutItem27: TdxLayoutItem
                CaptionOptions.Text = #8470' '#1087'/'#1087':'
                Control = cxRow
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutName: TdxLayoutItem
              CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
              Control = cxName
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem25: TdxLayoutItem
              CaptionOptions.Text = #1050#1072#1092#1077#1076#1088#1072':'
              Control = cxCathedra
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutGroup1: TdxLayoutGroup
            CaptionOptions.Text = #1054#1073#1097#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
            ButtonOptions.Buttons = <>
            object dxLayoutGroup14: TdxLayoutGroup
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutItem1: TdxLayoutItem
                AlignHorz = ahLeft
                CaptionOptions.Text = #1047#1072#1095#1077#1090#1085#1099#1093' '#1077#1076#1080#1085#1080#1094':'
                Control = cxDB01
                ControlOptions.ShowBorder = False
              end
              object dxLayoutItem21: TdxLayoutItem
                CaptionOptions.Text = #1069#1090#1086' '#1087#1088#1072#1082#1090#1080#1082#1072':'
                Control = cxDBCheckBox1
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutGroup13: TdxLayoutGroup
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutItem2: TdxLayoutItem
                AlignHorz = ahLeft
                CaptionOptions.Text = #1042#1089#1077#1075#1086', '#1095#1072#1089#1086#1074':'
                Control = cxDB02
                ControlOptions.ShowBorder = False
              end
              object dxLayoutItem22: TdxLayoutItem
                CaptionOptions.Text = #1054#1073#1098#1077#1084' '#1087#1088#1072#1082#1090#1080#1082#1080', '#1095#1072#1089':'
                Control = cxDBCalcEdit15
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
              CaptionOptions.Text = 'Separator'
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = False
              SizeOptions.SizableVert = False
            end
            object dxLayoutGroup15: TdxLayoutGroup
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutItem23: TdxLayoutItem
                CaptionOptions.Text = #1053#1072#1075#1088#1091#1079#1082#1072', '#1095#1072#1089':'
                Control = cxDBCalcEdit16
                ControlOptions.ShowBorder = False
              end
              object dxLayoutItem24: TdxLayoutItem
                CaptionOptions.Text = #1053#1077' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1086', '#1095#1072#1089':'
                Control = cxDBCalcEdit17
                ControlOptions.ShowBorder = False
              end
            end
          end
          object dxLayoutGroup8: TdxLayoutGroup
            AlignVert = avClient
            CaptionOptions.Text = #1069#1082#1079#1072#1084#1077#1085#1099', '#1079#1072#1095#1077#1090#1099', '#1082#1091#1088#1089#1086#1074#1099#1077' '#1088#1072#1073#1086#1090#1099' '#1080' '#1087#1088#1086#1077#1082#1090#1099
            ButtonOptions.Buttons = <>
            object dxLayoutGroup3: TdxLayoutGroup
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutItem3: TdxLayoutItem
                CaptionOptions.Text = #1069#1082#1079#1072#1084#1077#1085#1099':'
                Control = cxDB03
                ControlOptions.ShowBorder = False
              end
              object dxLayoutItem17: TdxLayoutItem
                CaptionOptions.Text = #1050#1086#1083'.:'
                Control = cxDBCalcEdit11
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutGroup4: TdxLayoutGroup
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutItem4: TdxLayoutItem
                CaptionOptions.Text = #1047#1072#1095#1077#1090#1099':'
                Control = cxDB04
                ControlOptions.ShowBorder = False
              end
              object dxLayoutItem18: TdxLayoutItem
                CaptionOptions.Text = #1050#1086#1083'.:'
                Control = cxDBCalcEdit12
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutGroup10: TdxLayoutGroup
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutItem5: TdxLayoutItem
                CaptionOptions.Text = #1050#1091#1088#1089#1086#1074#1099#1077' '#1087#1088#1086#1077#1082#1090#1099':'
                Control = cxDB05
                ControlOptions.ShowBorder = False
              end
              object dxLayoutItem19: TdxLayoutItem
                CaptionOptions.Text = #1050#1086#1083'.:'
                Control = cxDBCalcEdit13
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutGroup11: TdxLayoutGroup
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutItem6: TdxLayoutItem
                CaptionOptions.Text = #1050#1091#1088#1089#1086#1074#1099#1077' '#1088#1072#1073#1086#1090#1099':'
                Control = cxDB06
                ControlOptions.ShowBorder = False
              end
              object dxLayoutItem20: TdxLayoutItem
                CaptionOptions.Text = #1050#1086#1083'.:'
                Control = cxDBCalcEdit14
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
        object dxLayoutGroup12: TdxLayoutGroup
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          object dxLayoutGroup5: TdxLayoutGroup
            CaptionOptions.Text = #1040#1091#1076#1080#1090#1086#1088#1085#1072#1103' '#1088#1072#1073#1086#1090#1072', '#1095#1072#1089#1086#1074
            ButtonOptions.Buttons = <>
            object dxLayoutItem7: TdxLayoutItem
              CaptionOptions.Text = #1042#1089#1077#1075#1086':'
              Control = cxDBCalcEdit1
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem8: TdxLayoutItem
              CaptionOptions.Text = #1051#1077#1082#1094#1080#1080':'
              Control = cxDBCalcEdit2
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem9: TdxLayoutItem
              CaptionOptions.Text = #1051#1072#1073#1086#1088#1072#1090#1086#1088#1085#1099#1077':'
              Control = cxDBCalcEdit3
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem10: TdxLayoutItem
              CaptionOptions.Text = #1055#1088#1072#1082#1090#1080#1095#1077#1089#1082#1080#1077' '#1079#1072#1085#1103#1090#1080#1103':'
              Control = cxDBCalcEdit4
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutGroup7: TdxLayoutGroup
            CaptionOptions.Text = #1057#1072#1084#1086#1089#1090#1086#1103#1090#1077#1083#1100#1085#1072#1103' '#1088#1072#1073#1086#1090#1072', '#1095#1072#1089#1086#1074
            ButtonOptions.Buttons = <>
            object dxLayoutItem11: TdxLayoutItem
              CaptionOptions.Text = #1042#1089#1077#1075#1086':'
              Control = cxDBCalcEdit5
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem12: TdxLayoutItem
              CaptionOptions.Text = #1050#1091#1088#1089#1086#1074#1086#1081' '#1087#1088#1086#1077#1082#1090':'
              Control = cxDBCalcEdit6
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem13: TdxLayoutItem
              CaptionOptions.Text = #1050#1091#1088#1089#1086#1074#1072#1103' '#1088#1072#1073#1086#1090#1072':'
              Control = cxDBCalcEdit7
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem14: TdxLayoutItem
              CaptionOptions.Text = #1069#1082#1079#1072#1084#1077#1085#1099':'
              Control = cxDBCalcEdit8
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem15: TdxLayoutItem
              CaptionOptions.Text = #1050#1086#1085#1089#1091#1083#1100#1090#1072#1094#1080#1080':'
              Control = cxDBCalcEdit9
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem16: TdxLayoutItem
              CaptionOptions.Text = #1048#1085#1099#1077' '#1074#1080#1076#1099' '#1088#1072#1073#1086#1090#1099':'
              Control = cxDBCalcEdit10
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tDisciplineBooks
    Left = 416
    Top = 464
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tDiscipline
    Left = 448
    Top = 464
  end
  inherited ActionList: TActionList
    Left = 480
    Top = 464
    object acSelect: TAction [11]
      Caption = #1055#1086#1076#1073#1086#1088
      OnExecute = acSelectExecute
    end
    inherited acPasteDetail: TAction
      OnExecute = acPasteDetailExecute
    end
  end
  inherited ImageList: TImageList
    Left = 384
    Top = 466
  end
  inherited cxStyleRep: TcxStyleRepository
    Left = 512
    Top = 464
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
    Left = 544
    Top = 464
    DockControlHeights = (
      0
      0
      0
      26)
    inherited dxButtons: TdxBar
      DockedLeft = 408
    end
    inherited dxBarManagerBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cxSelect'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarAddMany'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarCopyDetail'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarPasteDetail'
        end>
    end
    object dxBarAddMany: TdxBarButton [12]
      Action = acSelect
      Category = 0
    end
    object cxSelect: TcxBarEditItem [13]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxRadioGroupProperties'
      Properties.Columns = 3
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = #1083#1080#1090#1077#1088#1072#1090#1091#1088#1072
          Value = 0
        end
        item
          Caption = #1082#1072#1076#1088#1099
          Value = 1
        end
        item
          Caption = #1072#1091#1076#1080#1090#1086#1088#1080#1080
          Value = 2
        end
        item
          Caption = #1087#1088#1086#1075#1088#1072#1084#1084#1099
          Value = 3
        end
        item
          Caption = #1082#1086#1084#1087#1077#1090#1077#1085#1094#1080#1080
          Value = 4
        end>
      Properties.OnChange = cxSelectPropertiesChange
      InternalEditValue = 0
    end
    inherited dxBarButton2: TdxBarButton
      Caption = #1054'/'#1044
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1090#1080#1087' '#1085#1072' '#1086#1089#1085#1086#1074#1085#1091#1102'/'#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1091#1102' '
    end
  end
  inherited dxBarDB: TdxBarDBNavigator
    Left = 584
    Top = 465
  end
end
