inherited fmBooksImport: TfmBooksImport
  Left = 386
  Top = 181
  Width = 951
  Height = 632
  Caption = #1048#1084#1087#1086#1088#1090' '#1076#1072#1085#1085#1099#1093' '#1088#1077#1077#1089#1090#1088#1072' '#1082#1085#1080#1075
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    Top = 393
    Width = 935
    Height = 200
    TabOrder = 2
    inherited tvMain: TcxGridDBTableView
      DataController.DataSource = dmPublic.dsBooks
      object tvMainObjectIntID: TcxGridDBColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'ObjectIntID'
        Width = 79
      end
      object tvMainBiblioDescription: TcxGridDBColumn
        Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        DataBinding.FieldName = 'BiblioDescription'
        Width = 499
      end
      object tvMainBooksCount: TcxGridDBColumn
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        DataBinding.FieldName = 'BooksCount'
        Width = 271
      end
      object tvMainExistInELibrary: TcxGridDBColumn
        Caption = #1045#1089#1090#1100' '#1074' '#1101#1083#1077#1082#1090#1088#1086#1085#1085#1086#1081' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1077
        DataBinding.FieldName = 'ExistInELibrary'
        Width = 184
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
