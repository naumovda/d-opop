inherited fmCompetentionEdit: TfmCompetentionEdit
  Left = 365
  Top = 128
  Caption = #1050#1086#1084#1087#1077#1090#1077#1085#1094#1080#1103
  ClientHeight = 508
  ClientWidth = 705
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 217
    Width = 705
    Height = 265
    ClientRectBottom = 261
    ClientRectRight = 701
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 697
      end
      inherited Grid: TcxGrid
        Width = 697
        Height = 211
        inherited tvMain: TcxGridDBTableView
          object tvMainSkillType: TcxGridDBColumn
            Caption = #1058#1080#1087' '#1085#1072#1074#1099#1082#1072
            DataBinding.FieldName = 'SkillType'
            Width = 102
          end
          object tvMainSkillText: TcxGridDBColumn
            Caption = #1053#1072#1074#1099#1082
            DataBinding.FieldName = 'SkillText'
            Width = 567
          end
        end
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Width = 705
    Height = 217
    object cxCode: TcxDBTextEdit [0]
      Left = 117
      Top = 64
      DataBinding.DataField = 'ObjectCode'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxCompetention: TcxDBMemo [1]
      Left = 10
      Top = 109
      DataBinding.DataField = 'ObjectName'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 3
      Height = 89
      Width = 185
    end
    object cxNumber: TcxDBSpinEdit [2]
      Left = 117
      Top = 37
      DataBinding.DataField = 'RowNumber'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxType: TcxDBButtonEdit [3]
      Left = 117
      Top = 10
      DataBinding.DataField = 'CompetentionType'
      DataBinding.DataSource = DSMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end
        item
          Caption = #1061
          Kind = bkText
        end>
      Properties.OnButtonClick = cxTypePropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    inherited dxLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      object dxLayoutItem4: TdxLayoutItem
        CaptionOptions.Text = #1058#1080#1087' '#1082#1086#1084#1087#1077#1090#1077#1085#1094#1080#1080':'
        Control = cxType
        ControlOptions.ShowBorder = False
      end
      object dxLayoutItem3: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = #8470' '#1087'/'#1087':'
        Control = cxNumber
        ControlOptions.ShowBorder = False
      end
      object dxLayoutItem1: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = #1064#1080#1092#1088' '#1082#1086#1084#1087#1077#1090#1077#1085#1094#1080#1080':'
        Control = cxCode
        ControlOptions.ShowBorder = False
      end
      object dxLayoutItem2: TdxLayoutItem
        CaptionOptions.Text = #1057#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1082#1086#1084#1087#1077#1090#1077#1085#1094#1080#1080':'
        CaptionOptions.Layout = clTop
        Control = cxCompetention
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tCompetentionSkill
    Left = 416
    Top = 128
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tCompetention
    Left = 448
    Top = 128
  end
  inherited ActionList: TActionList
    Left = 480
    Top = 128
  end
  inherited ImageList: TImageList
    Left = 384
    Top = 130
  end
  inherited cxStyleRep: TcxStyleRepository
    Left = 512
    Top = 128
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
    Left = 544
    Top = 128
    DockControlHeights = (
      0
      0
      0
      26)
    inherited dxButtons: TdxBar
      DockedLeft = 322
    end
    inherited dxBarManagerBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarCopy'
        end>
    end
  end
  inherited dxBarDB: TdxBarDBNavigator
    Left = 584
    Top = 129
  end
end
