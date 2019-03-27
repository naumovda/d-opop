inherited fmAttractionEdit: TfmAttractionEdit
  Caption = #1042#1080#1076' '#1087#1088#1080#1074#1083#1077#1095#1077#1085#1080#1103' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
  ClientHeight = 95
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 73
    Height = 283
    TabOrder = 2
    ClientRectBottom = 279
    inherited cxTable: TcxTabSheet
      inherited Grid: TcxGrid
        Height = 229
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Height = 73
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 94
      Top = 10
      DataBinding.DataField = 'ObjectCode'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 94
      Top = 37
      DataBinding.DataField = 'ObjectName'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    inherited dxLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      object dxLayoutItem1: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = #1050#1086#1076':'
        Control = cxDBTextEdit1
        ControlOptions.ShowBorder = False
      end
      object dxLayoutItem2: TdxLayoutItem
        AlignHorz = ahClient
        CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
        Control = cxDBTextEdit2
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tAttraction
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
