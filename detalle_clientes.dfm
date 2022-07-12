object detalleC: TdetalleC
  Left = 0
  Top = 0
  Caption = 'Info_Clientes'
  ClientHeight = 370
  ClientWidth = 655
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
    Top = 329
    Width = 655
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btn_guardar: TButton
      Left = 320
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Guardar'
      TabOrder = 0
      OnClick = btn_guardarClick
    end
    object btn_cancelar: TButton
      Left = 424
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btn_cancelarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 655
    Height = 329
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 128
      Top = 128
      Width = 71
      Height = 13
      Caption = 'Nombre cliente'
    end
    object Label2: TLabel
      Left = 128
      Top = 224
      Width = 43
      Height = 13
      Caption = 'Direcci'#243'n'
    end
    object Label3: TLabel
      Left = 128
      Top = 72
      Width = 51
      Height = 13
      Caption = 'Cliente ID:'
    end
    object nombre_cliente: TEdit
      Left = 320
      Top = 125
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object direccion_cliente: TEdit
      Left = 320
      Top = 221
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object id_cliente: TEdit
      Left = 320
      Top = 72
      Width = 121
      Height = 21
      Color = clSkyBlue
      ReadOnly = True
      TabOrder = 2
    end
  end
end
