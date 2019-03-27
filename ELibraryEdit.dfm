inherited fmLibraryEdit: TfmLibraryEdit
  Left = 414
  Top = 335
  Caption = #1041#1080#1073#1083#1080#1086#1090#1077#1095#1085#1072#1103' '#1089#1080#1089#1090#1077#1084#1072
  ClientHeight = 126
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 105
    Height = 3
    TabOrder = 0
    ClientRectBottom = 6
    ClientRectTop = 6
    inherited cxTable: TcxTabSheet
      inherited Grid: TcxGrid
        Height = 197
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Height = 105
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
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 94
      Top = 64
      DataBinding.DataField = 'ObjectURL'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 2
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
      object dxLayoutItem3: TdxLayoutItem
        CaptionOptions.Text = 'URL:'
        Control = cxDBTextEdit3
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tLibrary
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
