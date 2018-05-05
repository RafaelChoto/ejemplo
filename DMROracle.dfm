object dtmdlOracle: TdtmdlOracle
  OldCreateOrder = False
  Height = 150
  Width = 215
  object conOracle: TADOConnection
    LoginPrompt = False
    Provider = 'OraOLEDB.Oracle'
    Left = 32
    Top = 16
  end
  object tblVenistar_Test: TADOTable
    Connection = conOracle
    TableName = 'VENISTAR_TO_PRINT'
    Left = 112
    Top = 16
  end
  object qryGeneral: TADOQuery
    Connection = conOracle
    Parameters = <>
    SQL.Strings = (
      'Select * From SUBSIDIARY')
    Left = 24
    Top = 72
  end
  object HTTP: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    OnHeadersAvailable = HTTPHeadersAvailable
    Left = 88
    Top = 72
  end
end
