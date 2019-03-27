inherited fmPostEdit: TfmPostEdit
  Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
  ClientHeight = 361
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 97
    Height = 238
    ClientRectBottom = 234
    inherited cxTable: TcxTabSheet
      inherited Grid: TcxGrid
        Height = 184
        inherited tvMain: TcxGridDBTableView
          object tvMainPeriod: TcxGridDBColumn
            Caption = #1055#1077#1088#1080#1086#1076
            DataBinding.FieldName = 'Period'
            Width = 218
          end
          object tvMainHoursRate: TcxGridDBColumn
            Caption = #1053#1086#1088#1084#1072' '#1089#1090#1072#1074#1082#1080
            DataBinding.FieldName = 'HoursRate'
            Width = 120
          end
          object tvMainHoursRateAdd: TcxGridDBColumn
            Caption = #1053#1086#1088#1084#1072' '#1089#1090#1072#1074#1082#1080' '#1060#1042' '#1080' '#1048#1085#1071#1079
            DataBinding.FieldName = 'HoursRateAdd'
            Width = 136
          end
        end
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Height = 97
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 116
      Top = 10
      DataBinding.DataField = 'ObjectCode'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 116
      Top = 37
      DataBinding.DataField = 'ObjectName'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBCalcEdit1: TcxDBCalcEdit [2]
      Left = 116
      Top = 64
      DataBinding.DataField = 'HoursRate'
      DataBinding.DataSource = dmPublic.dsPost
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
        AlignHorz = ahLeft
        CaptionOptions.Text = #1053#1086#1088#1084#1072' '#1089#1090#1072#1074#1082#1080', '#1095#1072#1089'.:'
        Control = cxDBCalcEdit1
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tPostPeriodRate
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tPost
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
