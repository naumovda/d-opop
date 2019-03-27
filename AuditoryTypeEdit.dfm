inherited fmAuditoryTypeEdit: TfmAuditoryTypeEdit
  Caption = #1058#1080#1087' '#1072#1091#1076#1080#1090#1086#1088#1080#1080
  ClientHeight = 160
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 137
    Height = 3
    TabOrder = 1
    ClientRectBottom = 6
    ClientRectTop = 6
    inherited cxTable: TcxTabSheet
      inherited Grid: TcxGrid
        Height = 165
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Height = 137
    object cxDBMemo1: TcxDBMemo [0]
      Left = 10
      Top = 28
      DataBinding.DataField = 'ObjectName'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 0
      Height = 89
      Width = 185
    end
    inherited dxLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      object dxLayoutItem1: TdxLayoutItem
        CaptionOptions.Text = #1058#1080#1087' '#1072#1091#1076#1080#1090#1086#1088#1080#1080':'
        CaptionOptions.Layout = clTop
        Control = cxDBMemo1
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tAuditoryType
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
