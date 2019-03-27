inherited fmPeriodEdit: TfmPeriodEdit
  Caption = #1053#1086#1074#1099#1081' '#1091#1095#1077#1073#1085#1099#1081' '#1075#1086#1076
  ClientHeight = 111
  ClientWidth = 356
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 89
    Width = 356
    Height = 13
    TabOrder = 1
    ClientRectBottom = 16
    ClientRectRight = 352
    ClientRectTop = 16
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 348
      end
      inherited Grid: TcxGrid
        Width = 348
        Height = 189
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Width = 356
    Height = 89
    object cxDBSpinEdit1: TcxDBSpinEdit [0]
      Left = 83
      Top = 10
      DataBinding.DataField = 'ObjectCode'
      DataBinding.DataSource = DSMaster
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBLabel1: TcxDBLabel [1]
      Left = 10
      Top = 49
      DataBinding.DataField = 'ObjectName'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      Height = 21
      Width = 121
    end
    inherited dxLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      object dxLayoutItem1: TdxLayoutItem
        CaptionOptions.Text = #1059#1095#1077#1073#1085#1099#1081' '#1075#1086#1076':'
        Control = cxDBSpinEdit1
        ControlOptions.ShowBorder = False
      end
      object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
      end
      object dxLayoutItem2: TdxLayoutItem
        CaptionOptions.Visible = False
        Control = cxDBLabel1
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tPeriod
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
    inherited dxButtons: TdxBar
      DockedLeft = 29
    end
  end
end
