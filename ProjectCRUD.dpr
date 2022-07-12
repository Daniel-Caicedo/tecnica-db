program ProjectCRUD;

uses
  Vcl.Forms,
  Clientes in 'Clientes.pas' {Frm_empleados},
  detalle_clientes in 'detalle_clientes.pas' {detalleC},
  data_module in 'data_module.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_empleados, Frm_empleados);
  Application.CreateForm(TdetalleC, detalleC);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
