inherited fmPersonWorker: TfmPersonWorker
  Left = 300
  Top = 196
  Caption = #1056#1072#1073#1086#1090#1072' '#1087#1086' '#1087#1088#1086#1092#1080#1083#1102' '#1054#1055#1054#1055
  ClientHeight = 180
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 161
    Height = 1
    TabOrder = 1
    ClientRectBottom = 4
    ClientRectTop = 4
  end
  inherited dxLayout: TdxLayoutControl
    Height = 161
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 96
      Top = 10
      DataBinding.DataField = 'Organization'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 96
      Top = 37
      DataBinding.DataField = 'Post'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 96
      Top = 64
      DataBinding.DataField = 'Period'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit [3]
      Left = 96
      Top = 91
      DataBinding.DataField = 'Stage'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxDBCheckBox1: TcxDBCheckBox [4]
      Left = 10
      Top = 118
      Caption = #1042#1099#1074#1086#1076#1080#1090#1100' '#1074' '#1089#1087#1088#1072#1074#1082#1091
      DataBinding.DataField = 'IsShown'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    inherited dxLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      object dxLayoutItem1: TdxLayoutItem
        CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
        Control = cxDBTextEdit1
        ControlOptions.ShowBorder = False
      end
      object dxLayoutItem2: TdxLayoutItem
        CaptionOptions.Text = #1044#1086#1083#1078#1085#1086#1089#1090#1100':'
        Control = cxDBTextEdit2
        ControlOptions.ShowBorder = False
      end
      object dxLayoutItem3: TdxLayoutItem
        CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1088#1072#1073#1086#1090#1099':'
        Control = cxDBTextEdit3
        ControlOptions.ShowBorder = False
      end
      object dxLayoutItem4: TdxLayoutItem
        CaptionOptions.Text = #1057#1090#1072#1078', '#1083#1077#1090':'
        Control = cxDBTextEdit4
        ControlOptions.ShowBorder = False
      end
      object dxLayoutItem5: TdxLayoutItem
        CaptionOptions.Text = 'cxDBCheckBox1'
        CaptionOptions.Visible = False
        Control = cxDBCheckBox1
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tPersonStage
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
