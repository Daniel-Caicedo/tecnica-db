unit detalle_clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TdetalleC = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    nombre_cliente: TEdit;
    direccion_cliente: TEdit;
    btn_guardar: TButton;
    btn_cancelar: TButton;
    Label3: TLabel;
    id_cliente: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btn_guardarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  detalleC: TdetalleC;

implementation

{$R *.dfm}

uses data_module;

procedure TdetalleC.btn_cancelarClick(Sender: TObject);
begin
Close;
end;

procedure TdetalleC.btn_guardarClick(Sender: TObject);
begin
     if (self.Caption ='info_clientes - Add') then
     begin
       if (nombre_cliente.Text <> '') and (direccion_cliente.Text <> '') then
              begin
                   with DM.Qryinsert do
                   begin

                    active := false;
                    sql.Clear;
                    sql.Text := 'insert into clientes(Nombre_cliente, Direccion)'+ 'values(' + quotedstr(nombre_cliente.Text) + ',' + quotedstr(direccion_cliente.Text)    + ')';
                    ExecSQL;
                   end;
                      ShowMessage('informacion agregada exitosamente')  ;
                   Close;
              end;

     end 
     else if  (self.Caption ='info_clientes - Update') then
     begin
         if (nombre_cliente.Text <> '') and (direccion_cliente.Text <> '') then
         begin
              with DM.Qryupdate do
              begin
                  active := false;
                    sql.Clear;
                    sql.Text := 'UPDATE clientes SET Nombre_cliente = ' + quotedstr(nombre_cliente.Text) +
                                               ', Direccion = ' + quotedstr(direccion_cliente.Text) +
                                              
                            ' WHERE cliente = ' + id_cliente.Text;

                            ExecSQL;
                    
              end;

               ShowMessage('informacion actualizada exitosamente')  ;
                   Close; 
         end;
     end;
          
end;

procedure TdetalleC.FormShow(Sender: TObject);
begin
      if (self.Caption ='info_clientes - Add') then
      begin
          nombre_cliente.Clear;
          direccion_cliente.Clear;

      end
          else if (self.Caption = 'info_clientes - Update') then
          begin
             with DM.Qryselectdetails do 

             begin  
               active :=false;
               sql.Clear;
               sql.Text := 'select * from clientes where cliente =' + self.Hint;
               active := true;
             end;

                    id_cliente.Text := dm.Qryselectdetails.FieldByName('Cliente').AsString;
                    nombre_cliente.Text :=   dm.Qryselectdetails.FieldByName('Nombre_cliente').AsString;
                    direccion_cliente.Text :=   dm.Qryselectdetails.FieldByName('Direccion').AsString;
          end;
               
end;

end.
