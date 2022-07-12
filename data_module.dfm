object DM: TDM
  OldCreateOrder = False
  Height = 337
  Width = 514
  object Conn: TMyConnection
    Database = 'client'
    Username = 'root'
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 80
    EncryptedPassword = '8DFF90FF90FF8BFF'
  end
  object QrySelect: TMyQuery
    Connection = Conn
    SQL.Strings = (
      '')
    Left = 144
    Top = 80
  end
  object Qryupdate: TMyQuery
    Connection = Conn
    Left = 232
    Top = 104
  end
  object Qrydelete: TMyQuery
    Connection = Conn
    Left = 128
    Top = 224
  end
  object Qryinsert: TMyQuery
    Connection = Conn
    Left = 248
    Top = 232
  end
  object Qryselectdetails: TMyQuery
    Connection = Conn
    Left = 368
    Top = 128
  end
end
