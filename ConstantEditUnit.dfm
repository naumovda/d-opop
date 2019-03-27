inherited ConstantEdit: TConstantEdit
  Left = 385
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1072
  ClientHeight = 310
  ClientWidth = 429
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 113
    Width = 429
    ClientRectRight = 425
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 421
      end
      inherited Grid: TcxGrid
        Width = 421
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Width = 429
    Height = 113
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tConstant
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
      DockedLeft = 97
    end
  end
end
