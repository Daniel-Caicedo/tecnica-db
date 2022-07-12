object Frm_empleados: TFrm_empleados
  Left = 0
  Top = 0
  Caption = 'Lista de clientes'
  ClientHeight = 703
  ClientWidth = 1110
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1110
    Height = 662
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1108
      Height = 41
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 40
        Top = 16
        Width = 32
        Height = 13
        Caption = 'Buscar'
      end
      object edit_buscar: TEdit
        Left = 120
        Top = 11
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object btn_buscar: TButton
        Left = 272
        Top = 10
        Width = 75
        Height = 25
        Caption = 'Buscar'
        TabOrder = 1
        OnClick = btn_buscarClick
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 42
      Width = 1108
      Height = 619
      Align = alClient
      DataSource = MyDataSource1
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 662
    Width = 1110
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btn_crear: TButton
      Left = 144
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Crear'
      TabOrder = 0
      OnClick = btn_crearClick
    end
    object btn_actualizar: TButton
      Left = 248
      Top = 6
      Width = 75
      Height = 25
      Caption = 'actualizar'
      TabOrder = 1
      OnClick = btn_actualizarClick
    end
    object btn_borrar: TButton
      Left = 352
      Top = 6
      Width = 75
      Height = 25
      Caption = 'borrar'
      TabOrder = 2
      OnClick = btn_borrarClick
    end
    object btn_cerrar: TButton
      Left = 456
      Top = 6
      Width = 75
      Height = 25
      Caption = 'cerrar'
      TabOrder = 3
      OnClick = btn_cerrarClick
    end
  end
  object MyDataSource1: TMyDataSource
    DataSet = DM.QrySelect
    Left = 24
    Top = 670
  end
end
