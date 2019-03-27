inherited fmPersonImport: TfmPersonImport
  Left = 386
  Top = 181
  Width = 951
  Height = 632
  Caption = #1048#1084#1087#1086#1088#1090' '#1076#1072#1085#1085#1099#1093' '#1088#1077#1077#1089#1090#1088#1072' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    Top = 393
    Width = 935
    Height = 200
    TabOrder = 2
    inherited tvMain: TcxGridDBTableView
      DataController.DataSource = dmPublic.dsPerson
      object tvMainObjectID: TcxGridDBColumn
        DataBinding.FieldName = 'ObjectID'
      end
      object tvMainObjectIntId: TcxGridDBColumn
        DataBinding.FieldName = 'ObjectIntId'
      end
      object tvMainCathedraID: TcxGridDBColumn
        DataBinding.FieldName = 'CathedraID'
      end
      object tvMainObjectCode: TcxGridDBColumn
        DataBinding.FieldName = 'ObjectCode'
      end
      object tvMainFirstName: TcxGridDBColumn
        DataBinding.FieldName = 'FirstName'
      end
      object tvMainSecondName: TcxGridDBColumn
        DataBinding.FieldName = 'SecondName'
      end
      object tvMainLastName: TcxGridDBColumn
        DataBinding.FieldName = 'LastName'
      end
      object tvMainAttractionId: TcxGridDBColumn
        DataBinding.FieldName = 'AttractionId'
      end
      object tvMainDegreeId: TcxGridDBColumn
        DataBinding.FieldName = 'DegreeId'
      end
      object tvMainPostId: TcxGridDBColumn
        DataBinding.FieldName = 'PostId'
      end
      object tvMainStatusId: TcxGridDBColumn
        DataBinding.FieldName = 'StatusId'
      end
      object tvMainEducation: TcxGridDBColumn
        DataBinding.FieldName = 'Education'
      end
      object tvMainSpeciality: TcxGridDBColumn
        DataBinding.FieldName = 'Speciality'
      end
      object tvMainQualification: TcxGridDBColumn
        DataBinding.FieldName = 'Qualification'
      end
      object tvMainEducationAdd: TcxGridDBColumn
        DataBinding.FieldName = 'EducationAdd'
      end
      object tvMainExperiance: TcxGridDBColumn
        DataBinding.FieldName = 'Experiance'
      end
      object tvMainExperiancePedagogical: TcxGridDBColumn
        DataBinding.FieldName = 'ExperiancePedagogical'
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Width = 935
    Height = 359
    object cxSheet: TcxSpreadSheet [0]
      Left = 10
      Top = 10
      Width = 915
      Height = 367
      DefaultStyle.Font.Name = 'MS Sans Serif'
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = []
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      object dxLayoutSheet: TdxLayoutItem
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = #1044#1072#1085#1085#1099#1077':'
        CaptionOptions.Visible = False
        Control = cxSheet
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited cxSplitter: TcxSplitter
    Top = 385
    Width = 935
  end
  inherited ActionList: TActionList
    inherited acPrint: TAction
      Caption = #1048#1084#1087#1086#1088#1090
      OnExecute = acPrintExecute
    end
    inherited acRefresh: TAction
      OnExecute = acRefreshExecute
    end
    inherited acExcel: TAction
      OnExecute = acExcelExecute
    end
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockControlHeights = (
      0
      0
      26
      0)
    inherited dxActions: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
    end
    inherited dxBarSubItem1: TdxBarSubItem
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
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
          ItemName = 'dxBarButton4'
        end>
    end
    inherited dxBarButton3: TdxBarButton
      Caption = #1054#1090#1082#1088#1099#1090#1100
    end
  end
  object OpenDialog: TOpenDialog
    Filter = #1060#1072#1081#1083#1099' Excel|*.xls*|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 616
    Top = 10
  end
end
