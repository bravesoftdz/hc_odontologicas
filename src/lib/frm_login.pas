unit frm_login;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons;

type

  { TfrmLogin }

  TfrmLogin = class(TForm)
    btnAceptar: TBitBtn;
    btnCancelar: TBitBtn;
    edUsuario: TEdit;
    edClave: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edMensaje: TStaticText;
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    procedure ValidarUsuario;
  public
    { public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation
{$R *.lfm}
uses
  dm_login
  ;


{ TfrmLogin }

procedure TfrmLogin.btnCancelarClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

procedure TfrmLogin.btnAceptarClick(Sender: TObject);
begin
  ValidarUsuario;
end;

procedure TfrmLogin.ValidarUsuario;
begin
  if DMLogin.Acceso(TRIM(edUsuario.Text), TRIM(edClave.Text)) = USR_OK then
  begin
    edMensaje.Caption:= 'Usuario Valido';
    ModalResult:= mrOK;
  end
  else
  begin
    edMensaje.Caption:= 'Usuario/Clave Incorrecto';
    edUsuario.Clear;
    edUsuario.SetFocus;
    edClave.Clear;
  end;
end;

end.

