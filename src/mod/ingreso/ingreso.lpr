program ingreso;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, frm_mainingreso
  { you can add units after this };

{$R *.res}

begin
  Application.Title:='Ingreso HC';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TfrmMainIngreso, frmMainIngreso);
  Application.Run;
end.
