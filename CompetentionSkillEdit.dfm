inherited fmCompetentionSkillEdit: TfmCompetentionSkillEdit
  Left = 497
  Top = 152
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1085#1072#1074#1099#1082#1072
  ClientHeight = 506
  ClientWidth = 683
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 481
    Width = 683
    Height = 7
    ClientRectBottom = 10
    ClientRectRight = 679
    ClientRectTop = 10
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 675
      end
      inherited Grid: TcxGrid
        Width = 675
        Height = 38
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Width = 683
    Height = 481
    object cxType: TcxDBRadioGroup [0]
      Left = 10
      Top = 10
      Caption = #1042#1099#1073#1086#1088' '#1090#1080#1087#1072' '#1085#1072#1074#1099#1082#1072
      DataBinding.DataField = 'SkillTypeId'
      DataBinding.DataSource = DSMaster
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = #1079#1085#1072#1090#1100
          Value = '{9672E457-4395-4AB9-B623-E4A45FEAFCD7}'
        end
        item
          Caption = #1091#1084#1077#1090#1100
          Value = '{502AF05A-6286-4CE0-BA4A-F57702D3B002}'
        end
        item
          Caption = #1074#1083#1072#1076#1077#1090#1100
          Value = '{3F17E62C-EF84-4C9D-BFD2-25B6EFCA624E}'
        end>
      TabOrder = 0
      Height = 105
      Width = 359
    end
    object cxSkill: TcxDBMemo [1]
      Left = 10
      Top = 139
      DataBinding.DataField = 'SkillText'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 1
      Height = 56
      Width = 185
    end
    object cxMin: TcxDBMemo [2]
      Left = 10
      Top = 231
      DataBinding.DataField = 'LevelMin'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 2
      Height = 58
      Width = 185
    end
    object cxMid: TcxDBMemo [3]
      Left = 10
      Top = 313
      DataBinding.DataField = 'LevelMid'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 3
      Height = 58
      Width = 185
    end
    object cxMax: TcxDBMemo [4]
      Left = 10
      Top = 395
      DataBinding.DataField = 'LevelMax'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 4
      Height = 67
      Width = 185
    end
    inherited dxLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      object dxLayoutItem1: TdxLayoutItem
        CaptionOptions.Text = 'cxDBRadioGroup1'
        CaptionOptions.Visible = False
        Control = cxType
        ControlOptions.ShowBorder = False
      end
      object dxLayoutItem2: TdxLayoutItem
        CaptionOptions.Text = #1053#1072#1074#1099#1082
        CaptionOptions.Layout = clTop
        Control = cxSkill
        ControlOptions.ShowBorder = False
      end
      object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
      end
      object dxLayoutItem3: TdxLayoutItem
        CaptionOptions.Text = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1099#1081
        CaptionOptions.Layout = clTop
        Control = cxMin
        ControlOptions.ShowBorder = False
      end
      object dxLayoutItem4: TdxLayoutItem
        CaptionOptions.Text = #1041#1072#1079#1086#1074#1099#1081
        CaptionOptions.Layout = clTop
        Control = cxMid
        ControlOptions.ShowBorder = False
      end
      object dxLayoutItem5: TdxLayoutItem
        CaptionOptions.Text = #1055#1088#1086#1076#1074#1080#1085#1091#1090#1099#1081
        CaptionOptions.Layout = clTop
        Control = cxMax
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DS: TDataSource
    Left = 424
    Top = 32
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tCompetentionSkill
    Left = 456
    Top = 32
  end
  inherited ActionList: TActionList
    Left = 488
    Top = 32
  end
  inherited ImageList: TImageList
    Left = 392
    Top = 34
  end
  inherited cxStyleRep: TcxStyleRepository
    Left = 520
    Top = 32
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
    Left = 552
    Top = 32
    DockControlHeights = (
      0
      0
      0
      26)
    inherited dxButtons: TdxBar
      DockedLeft = 300
    end
  end
  inherited dxBarDB: TdxBarDBNavigator
    Left = 592
    Top = 33
  end
end
