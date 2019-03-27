inherited fmDegreeEdit: TfmDegreeEdit
  Caption = #1059#1095#1077#1085#1072#1103' '#1089#1090#1077#1087#1077#1085#1100
  ClientHeight = 96
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 105
    Height = 4
    ClientRectBottom = 7
    ClientRectTop = 7
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
      TabOrder = 2
      Width = 121
    end
    object cxDBCheckBox1: TcxDBCheckBox [2]
      Left = 221
      Top = 10
      Caption = #1057#1090#1077#1087#1077#1085#1100' '#1091#1095#1080#1090#1099#1074#1072#1077#1090#1089#1103
      DataBinding.DataField = 'IsDegreeExist'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 1
      Width = 276
    end
    inherited dxLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      object dxLayoutGroup1: TdxLayoutGroup
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutItem1: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = #1050#1086#1076':'
          Control = cxDBTextEdit1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem3: TdxLayoutItem
          CaptionOptions.Text = #1057#1090#1077#1087#1077#1085#1100' '#1091#1095#1080#1090#1099#1074#1072#1077#1090#1089#1103
          CaptionOptions.Visible = False
          Control = cxDBCheckBox1
          ControlOptions.ShowBorder = False
        end
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
    DataSet = dmPublic.tDegree
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
    inherited dxBarDBNavNext1: TdxBarDBNavButton
      Enabled = True
    end
    inherited dxBarDBNavLast1: TdxBarDBNavButton
      Enabled = True
    end
  end
end
