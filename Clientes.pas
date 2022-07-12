unit Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, DBAccess, MyAccess;

type
  TFrm_empleados = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btn_crear: TButton;
    btn_actualizar: TButton;
    btn_borrar: TButton;
    btn_cerrar: TButton;
    Panel3: TPanel;
    edit_buscar: TEdit;
    Label1: TLabel;
    btn_buscar: TButton;
    MyDataSource1: TMyDataSource;
    DBGrid1: TDBGrid;
    procedure btn_cerrarClick(Sender: TObject);
    procedure btn_crearClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_actualizarClick(Sender: TObject);
    procedure btn_borrarClick(Sender: TObject);
    procedure btn_buscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure RefreshGrid;
  end;

var
  Frm_empleados: TFrm_empleados;

implementation

{$R *.dfm}

uses data_module, detalle_clientes;

procedure TFrm_empleados.btn_actualizarClick(Sender: TObject);
begin
  detalleC.Caption := 'info_clientes - Update';
  detalleC.Hint := DBGrid1.Fields[0].Text;
  detalleC.showmodal;
    RefreshGrid;
end;

procedure TFrm_empleados.btn_borrarClick(Sender: TObject);
begin
if DBGrid1.Fields[0].Text = '' then
begin
    MessageDlg('¡No se ha selecionado ninguna entrada!', mtInformation, [mbOk], 0);
      exit;
    end;
  if MessageDlg('¿esta segura o seguro de querer borrar esta entrada?',   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        with DM.Qrydelete do
           begin
             active := false;
             sql.Clear;
             sql.Add('Delete from clientes where cliente = ' + DBGrid1.Fields[0].Text);
             execsql;
           end;
         MessageDlg('¡Se elimino la informacion !', mtInformation, [mbOk], 0);
         RefreshGrid;
end;

end;

procedure TFrm_empleados.btn_buscarClick(Sender: TObject);
begin
       RefreshGrid;
end;

procedure TFrm_empleados.btn_cerrarClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_empleados.btn_crearClick(Sender: TObject);
begin
 detalleC.Caption := 'info_clientes - Add';
  detalleC.showmodal;
    RefreshGrid;

end;

procedure TFrm_empleados.FormShow(Sender: TObject);
begin
 RefreshGrid;
end;

procedure   TFrm_empleados.RefreshGrid;
begin
    with DM.QrySelect do

begin
    active:= false;
    sql.Clear;
    sql.Text:= 'SELECT * FROM clientes WHERE Nombre_cliente LIKE ' + quotedstr('%' + edit_buscar.Text +'%');
    active:=true;


end;
end;
end.
