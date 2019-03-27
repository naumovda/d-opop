inherited fmDisciplineAuditoryEdit: TfmDisciplineAuditoryEdit
  Caption = #1040#1091#1076#1080#1090#1086#1088#1080#1080' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099
  ClientHeight = 106
  ClientWidth = 466
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 81
    Width = 466
    Height = 5
    TabOrder = 1
    ClientRectBottom = 8
    ClientRectRight = 462
    ClientRectTop = 8
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 458
      end
      inherited Grid: TcxGrid
        Width = 458
        Height = 221
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Width = 466
    Height = 81
    object cxType: TcxDBButtonEdit [0]
      Left = 92
      Top = 10
      DataBinding.DataField = 'Type'
      DataBinding.DataSource = DSMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxTypePropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxAuditory: TcxDBButtonEdit [1]
      Left = 92
      Top = 37
      DataBinding.DataField = 'Auditory'
      DataBinding.DataSource = DSMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxAuditoryPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    inherited dxLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      object dxLayoutItem1: TdxLayoutItem
        CaptionOptions.Text = #1058#1080#1087' '#1072#1091#1076#1080#1090#1086#1088#1080#1080':'
        Control = cxType
        ControlOptions.ShowBorder = False
      end
      object dxLayoutItem2: TdxLayoutItem
        CaptionOptions.Text = #1040#1091#1076#1080#1090#1086#1088#1080#1103':'
        Control = cxAuditory
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tDisciplineAuditory
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
      DockedLeft = 139
    end
  end
end
