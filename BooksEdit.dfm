inherited fmBooksEdit: TfmBooksEdit
  Left = 389
  Top = 312
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1073#1080#1073#1083#1080#1086#1075#1088#1072#1092#1080#1095#1077#1089#1082#1086#1075#1086' '#1080#1089#1090#1086#1095#1085#1080#1082#1072
  ClientHeight = 232
  ClientWidth = 516
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 233
    Width = 516
    Height = 12
    ClientRectBottom = 15
    ClientRectRight = 512
    ClientRectTop = 15
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 508
      end
      inherited Grid: TcxGrid
        Width = 508
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Width = 516
    Height = 233
    object cxName: TcxDBMemo [0]
      Left = 10
      Top = 28
      DataBinding.DataField = 'BiblioDescription'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 0
      Height = 89
      Width = 185
    end
    object cxCount: TcxDBCalcEdit [1]
      Left = 77
      Top = 123
      DataBinding.DataField = 'BooksCount'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxIsELIb: TcxDBCheckBox [2]
      Left = 10
      Top = 162
      Caption = #1077#1089#1090#1100' '#1074' '#1101#1083#1077#1082#1090#1088#1086#1085#1085#1086#1081' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1077
      DataBinding.DataField = 'ExistInELibrary'
      DataBinding.DataSource = DSMaster
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 2
      Width = 184
    end
    object cxELib: TcxDBLookupComboBox [3]
      Left = 308
      Top = 162
      DataBinding.DataField = 'ELibrary'
      DataBinding.DataSource = DSMaster
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ObjectId'
      Properties.ListColumns = <
        item
          FieldName = 'ObjectCode'
        end>
      Style.HotTrack = False
      TabOrder = 3
      Width = 145
    end
    inherited dxLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      object dxLayoutName: TdxLayoutItem
        AlignHorz = ahClient
        CaptionOptions.Text = #1041#1080#1073#1083#1080#1086#1075#1088#1072#1092#1080#1095#1077#1089#1082#1086#1077' '#1086#1087#1080#1089#1072#1085#1080#1077
        CaptionOptions.Layout = clTop
        Control = cxName
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroupCount: TdxLayoutGroup
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutCount: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
          Control = cxCount
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
      end
      object dxLayoutGroup1: TdxLayoutGroup
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutIsELib: TdxLayoutItem
          CaptionOptions.Text = #1077#1089#1090#1100' '#1074' '#1101#1083#1077#1082#1090#1088#1086#1085#1085#1086#1081' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1077
          CaptionOptions.Visible = False
          Control = cxIsELIb
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem2: TdxLayoutItem
          AlignHorz = ahClient
          CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1069#1041#1057':'
          Control = cxELib
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tBooks
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
    DockControlHeights = (
      0
      0
      0
      26)
  end
end
