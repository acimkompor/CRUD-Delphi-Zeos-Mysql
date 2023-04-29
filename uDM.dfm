object DM: TDM
  OldCreateOrder = False
  Height = 190
  Width = 220
  object Zconn: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    Connected = True
    HostName = 'localhost'
    Port = 0
    Database = 'crud_delphi'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    Left = 72
    Top = 64
  end
  object Qry: TZQuery
    Connection = Zconn
    Params = <>
    Left = 128
    Top = 64
  end
end
