inherited fmOPOPEdit: TfmOPOPEdit
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1072#1085#1085#1099#1093' '#1054#1055#1054#1055
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    TabOrder = 2
  end
  inherited dxLayout: TdxLayoutControl
    object cxCode: TcxDBTextEdit [0]
      Left = 94
      Top = 10
      DataBinding.DataField = 'ObjectCode'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxName: TcxDBTextEdit [1]
      Left = 94
      Top = 37
      DataBinding.DataField = 'ObjectName'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxYearStart: TcxDBSpinEdit [2]
      Left = 94
      Top = 76
      DataBinding.DataField = 'YearStart'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxYearCount: TcxDBSpinEdit [3]
      Left = 94
      Top = 103
      DataBinding.DataField = 'YearCount'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    inherited dxLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      object dxLayoutCode: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = #1050#1086#1076':'
        Control = cxCode
        ControlOptions.ShowBorder = False
      end
      object dxLayoutName: TdxLayoutItem
        AlignHorz = ahClient
        CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
        Control = cxName
        ControlOptions.ShowBorder = False
      end
      object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
      end
      object dxLayoutYearStart: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = #1043#1086#1076' '#1085#1072#1073#1086#1088#1072':'
        Control = cxYearStart
        ControlOptions.ShowBorder = False
      end
      object dxLayoutYearCount: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = #1057#1088#1086#1082' '#1086#1073#1091#1095#1077#1085#1080#1103':'
        Control = cxYearCount
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tOPOP
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
