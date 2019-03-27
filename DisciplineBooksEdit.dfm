inherited fmDisciplineBooksEdit: TfmDisciplineBooksEdit
  Left = 410
  Top = 310
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1073#1080#1073#1083#1080#1086#1075#1088#1072#1092#1080#1095#1077#1089#1082#1086#1075#1086' '#1080#1089#1090#1086#1095#1085#1080#1082#1072
  ClientHeight = 279
  ClientWidth = 600
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 281
    Width = 600
    Height = 15
    ClientRectBottom = 18
    ClientRectRight = 596
    ClientRectTop = 18
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 592
      end
      inherited Grid: TcxGrid
        Width = 592
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Width = 600
    Height = 281
    object cxName: TcxMemo [0]
      Left = 10
      Top = 28
      Style.HotTrack = False
      TabOrder = 0
      Height = 89
      Width = 185
    end
    object cxCount: TcxCalcEdit [1]
      Left = 77
      Top = 123
      EditValue = 0.000000000000000000
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxIsELIb: TcxCheckBox [2]
      Left = 204
      Top = 123
      Caption = #1077#1089#1090#1100' '#1074' '#1101#1083#1077#1082#1090#1088#1086#1085#1085#1086#1081' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1077
      Properties.ImmediatePost = True
      Properties.OnChange = cxIsELIbPropertiesChange
      Style.HotTrack = False
      TabOrder = 2
      Width = 189
    end
    object cxDBRadioGroup1: TcxDBRadioGroup [3]
      Left = 10
      Top = 162
      Caption = #1051#1080#1090#1077#1088#1072#1090#1091#1088#1072
      DataBinding.DataField = 'IsBase'
      DataBinding.DataSource = DSMaster
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = #1086#1089#1085#1086#1074#1085#1072#1103
          Value = True
        end
        item
          Caption = #1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103
          Value = False
        end>
      TabOrder = 4
      Height = 79
      Width = 529
    end
    object cxELib: TcxLookupComboBox [4]
      Left = 428
      Top = 123
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ObjectId'
      Properties.ListColumns = <
        item
          FieldName = 'ObjectCode'
        end>
      Properties.ListSource = dmPublic.dsLibrary
      Style.HotTrack = False
      TabOrder = 3
      Width = 145
    end
    inherited dxLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      object dxLayoutName: TdxLayoutItem
        AlignHorz = ahClient
        CaptionOptions.Text = #1041#1080#1073#1083#1080#1086#1075#1088#1072#1092#1080#1095#1077#1089#1082#1086#1077' '#1086#1087#1080#1089#1072#1085#1080#1077
        CaptionOptions.Layout = clTop
        Control = cxName
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroupCount: TdxLayoutGroup
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutCount: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
          Control = cxCount
          ControlOptions.ShowBorder = False
        end
        object dxLayoutIsELib: TdxLayoutItem
          CaptionOptions.Text = #1077#1089#1090#1100' '#1074' '#1101#1083#1077#1082#1090#1088#1086#1085#1085#1086#1081' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1077
          CaptionOptions.Visible = False
          Control = cxIsELIb
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem2: TdxLayoutItem
          AlignHorz = ahClient
          CaptionOptions.Text = #1069#1041#1057':'
          Control = cxELib
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
      end
      object dxLayoutItem1: TdxLayoutItem
        CaptionOptions.Text = 'cxDBRadioGroup1'
        CaptionOptions.Visible = False
        Control = cxDBRadioGroup1
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DS: TDataSource
    Left = 288
    Top = 64
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tDisciplineBooks
    Left = 320
    Top = 64
  end
  inherited ActionList: TActionList
    Left = 352
    Top = 64
    object acInit: TAction
      Caption = 'acInit'
      OnExecute = acInitExecute
    end
  end
  inherited ImageList: TImageList
    Left = 256
    Top = 66
  end
  inherited cxStyleRep: TcxStyleRepository
    Left = 384
    Top = 64
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
    Left = 416
    Top = 64
    DockControlHeights = (
      0
      0
      0
      26)
    inherited dxButtons: TdxBar
      DockedLeft = 217
    end
  end
  inherited dxBarDB: TdxBarDBNavigator
    Left = 448
    Top = 65
  end
end
