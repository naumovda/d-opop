inherited fmCathedraEdit: TfmCathedraEdit
  Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
  ClientHeight = 194
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 177
    Height = 5
    TabOrder = 2
    ClientRectBottom = 8
    ClientRectTop = 8
    inherited cxTable: TcxTabSheet
      inherited Grid: TcxGrid
        Height = 100
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Height = 177
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
    object cxDBMemo1: TcxDBMemo [2]
      Left = 94
      Top = 64
      Style.HotTrack = False
      TabOrder = 2
      Height = 89
      Width = 185
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
        CaptionOptions.Text = #1050#1086#1085#1090#1072#1082#1090#1099':'
        Control = cxDBMemo1
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tCathedra
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
