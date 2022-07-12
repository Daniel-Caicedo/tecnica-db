unit data_module;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, MyAccess, MemDS;

type
  TDM = class(TDataModule)
    Conn: TMyConnection;
    QrySelect: TMyQuery;
    Qryupdate: TMyQuery;
    Qrydelete: TMyQuery;
    Qryinsert: TMyQuery;
    Qryselectdetails: TMyQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
