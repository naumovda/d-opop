inherited fmBooksSelect: TfmBooksSelect
  Left = 233
  Top = 173
  Height = 592
  Caption = #1055#1086#1076#1073#1086#1088' '#1083#1080#1090#1077#1088#1072#1090#1091#1088#1099
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLeft: TdxLayoutControl [0]
    Height = 262
    TabOrder = 4
    inherited cxSearch: TcxButton
      Left = 32
      Width = 122
    end
    inherited cxName: TcxTextEdit
      Width = 121
    end
    inherited cxIsELib: TcxRadioGroup
      Width = 185
    end
  end
  inherited cxSplitterMain: TcxSplitter [1]
    Height = 262
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 296
    Width = 1071
    Height = 257
    Align = alBottom
    TabOrder = 6
    TabStop = False
    object dxBarDockControl1: TdxBarDockControl
      Left = 10
      Top = 10
      Width = 646
      Height = 26
      Align = dalTop
      BarManager = dxBarManager
    end
    object cxGridSelect: TcxGrid
      Left = 10
      Top = 42
      Width = 1051
      Height = 135
      TabOrder = 1
      object tvSelect: TcxGridDBTableView
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
        OnCellDblClick = tvSelectCellDblClick
        DataController.DataSource = dmPublic.dsDisciplineBooks
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
        object tvMainBook: TcxGridDBColumn
          Caption = #1041#1080#1073#1083#1080#1086#1075#1088#1072#1092#1080#1095#1077#1089#1082#1072#1103' '#1089#1089#1099#1083#1082#1072
          DataBinding.FieldName = 'Book'
          Width = 638
        end
        object tvMainIsBase: TcxGridDBColumn
          Caption = #1054#1089#1085#1086#1074#1085#1072#1103
          DataBinding.FieldName = 'IsBase'
          Width = 62
        end
      end
      object lvSelect: TcxGridLevel
        GridView = tvSelect
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item2: TdxLayoutItem
        CaptionOptions.Text = 'dxBarDockControl1'
        CaptionOptions.Visible = False
        Control = dxBarDockControl1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item3: TdxLayoutItem
        AlignVert = avClient
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = cxGridSelect
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited Grid: TcxGrid [3]
    Height = 262
    TabOrder = 7
    inherited tvMain: TcxGridDBTableView
      Styles.OnGetContentStyle = tvMainStylesGetContentStyle
      inherited tvMainBiblioDescription: TcxGridDBColumn
        Width = 477
      end
    end
  end
  object cxSplitter1: TcxSplitter [4]
    Left = 0
    Top = 288
    Width = 1071
    Height = 8
    HotZoneClassName = 'TcxSimpleStyle'
    AlignSplitter = salBottom
    Control = dxLayoutControl1
  end
  inherited Actions: TActionList
    inherited acEdit: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100'/'#1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 9
    end
    object acDeleteFromSelect: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 4
      OnExecute = acDeleteFromSelectExecute
    end
    object acChangeBase: TAction
      Caption = #1054#1089#1085#1086#1074#1085#1072#1103' <-> '#1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103
      ImageIndex = 3
      OnExecute = acChangeBaseExecute
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
    inherited dxBarManagerBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 147
          Visible = True
          ItemName = 'dxIsBase'
        end
        item
          Visible = True
          ItemName = 'dxEdit'
        end>
    end
    object dxBarManagerSelect: TdxBar [1]
      Caption = 'Select'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 183
      FloatTop = 173
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    inherited dxBarSubItem1: TdxBarSubItem
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarGroup'
        end>
    end
    inherited dxEdit: TdxBarButton
      PaintStyle = psCaptionGlyph
    end
    object dxIsBase: TdxBarCombo
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074':'
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074':'
      Visible = ivAlways
      ShowCaption = True
      Width = 100
      Text = #1086#1089#1085#1086#1074#1085#1091#1102' '#1083#1080#1090#1077#1088#1072#1090#1091#1088#1091
      ShowEditor = False
      Items.Strings = (
        #1086#1089#1085#1086#1074#1085#1091#1102' '#1083#1080#1090#1077#1088#1072#1090#1091#1088#1091
        #1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1091#1102' '#1083#1080#1090#1077#1088#1072#1090#1091#1088#1091)
      ItemIndex = 0
    end
    object dxBarButton1: TdxBarButton
      Action = acDeleteFromSelect
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Action = acChangeBase
      Caption = #1054' <-> '#1044
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  object DSSelect: TDataSource
    DataSet = dmPublic.tDisciplineBooks
    OnStateChange = DSSelectStateChange
    OnDataChange = DSSelectDataChange
    Left = 72
    Top = 282
  end
end
