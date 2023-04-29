program CRUD_Mysql;

uses
  Vcl.Forms,
  uFrmDepan in 'uFrmDepan.pas' {frmDepan},
  uDM in 'uDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDepan, frmDepan);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
