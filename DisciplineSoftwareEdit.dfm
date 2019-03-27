inherited fmDisciplineSoftwareEdit: TfmDisciplineSoftwareEdit
  Left = 422
  Top = 415
  Caption = #1042#1099#1073#1086#1088' '#1055#1054
  ClientHeight = 104
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 81
    Height = 3
    ClientRectBottom = 6
    ClientRectTop = 6
    inherited cxTable: TcxTabSheet
      inherited Grid: TcxGrid
        Height = 272
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Height = 81
    object cxDBSpinEdit1: TcxDBSpinEdit [0]
      Left = 157
      Top = 10
      DataBinding.DataField = 'RowNumber'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxSoftware: TcxDBLookupComboBox [1]
      Left = 157
      Top = 37
      DataBinding.DataField = 'Software'
      DataBinding.DataSource = DSMaster
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ObjectId'
      Properties.ListColumns = <
        item
          FieldName = 'ObjectName'
        end>
      Style.HotTrack = False
      TabOrder = 1
      Width = 145
    end
    inherited dxLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      object dxLayoutItem1: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = #8470' '#1087'/'#1087':'
        Control = cxDBSpinEdit1
        ControlOptions.ShowBorder = False
      end
      object dxLayoutItem2: TdxLayoutItem
        CaptionOptions.Text = #1055#1088#1086#1075#1088#1072#1084#1084#1085#1086#1077' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077':'
        Control = cxSoftware
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tDisciplineSoftware
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
