unit uFrmDepan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvUtil, Vcl.Grids, AdvObj, BaseGrid,
  AdvGrid, Vcl.StdCtrls;

type
  TfrmDepan = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edNama: TEdit;
    edTelepon: TEdit;
    cbJK: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnSimpan: TButton;
    btnEdit: TButton;
    btnHapus: TButton;
    Grid: TAdvStringGrid;
    procedure btnSimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GridDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure btnEditClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
    function getJenisKelamin(ACombo: TComboBox):String;
    procedure myQry(Astr: String);
    procedure tampilAwal;
    procedure tampilData;

  public
    { Public declarations }
  end;

var
  frmDepan: TfrmDepan;

implementation

{$R *.dfm}

uses uDM;


{ TfrmDepan }

var
 id: string;


procedure TfrmDepan.btnEditClick(Sender: TObject);
var
  str: String;
begin
  str := Format('UPDATE anggota SET nama = "%s", telepone = "%s", jenis_kelamin = "%s" WHERE id = "%s"',
              [edNama.Text, edTelepon.Text , getJenisKelamin(cbJk), id]);
  myQry(str);
  ShowMessage('update data sukses');
  tampilAwal;
  tampilData;
end;

procedure TfrmDepan.btnHapusClick(Sender: TObject);
var
  str : String;
begin
  if id <> '' then
  begin
    if MessageDlg('Apakah data ini benar akan dihapus?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      str := Format('Delete from anggota Where id = "%s"',
                    [id]);
      myQry(str);
      ShowMessage('Data berhasil di hapus');
      tampilAwal;
      tampilData;
    end;
  end;
end;

procedure TfrmDepan.btnSimpanClick(Sender: TObject);
var
  str: String;
begin
  if btnSimpan.Caption = 'Batal' then
  begin
    tampilAwal;
  end else
  begin
    str := Format('INSERT into anggota (nama, telepone, jenis_kelamin, tanggal_input) VALUES ("%s", "%s", "%s", "%s")',
                [edNama.Text, edTelepon.Text, getJenisKelamin(cbJK), FormatDateTime('yyyy-MM-dd HH:mm:ss', Now)]);
    if edNama.Text = '' then
    begin
      ShowMessage('Kolom nama tidak boleh kosong');
      exit;
    end;

    myQry(str);
    ShowMessage('Berhasil input data');
    tampilAwal;
    tampilData;
  end;
end;

procedure TfrmDepan.FormShow(Sender: TObject);
begin
   tampilAwal;
   tampilData;
end;

function TfrmDepan.getJenisKelamin(ACombo: TComboBox): String;
begin
  if ACombo.ItemIndex = ACombo.Items.IndexOf('Perempuan') then
  Result := 'p' else Result := 'l';
end;

procedure TfrmDepan.GridDblClickCell(Sender: TObject; ARow, ACol: Integer);
begin
  with Grid do
  begin
    id := Cells[5, ARow];
    edNama.Text := cells[1, Arow];
    edTelepon.Text := cells[2, Arow];
    cbJk.ItemIndex := cbJk.Items.IndexOf(cells[3, Arow]);
  end;
  btnSimpan.Caption := 'Batal';
  btnEdit.Enabled := true;
  btnHapus.Enabled := true;
end;

procedure TfrmDepan.myQry(Astr: String);
var
  cek: String;
begin
  DM.Qry.Close;
  DM.Qry.SQL.Clear;
  DM.Qry.SQL.Text := Astr;
  cek := Copy(Astr, 1, 3);
  if UpperCase(cek) = 'SEL' then
  DM.Qry.Open
  else
  DM.Qry.ExecSQL;
end;

procedure TfrmDepan.tampilAwal;
begin
  edNama.Text := '';
  edTelepon.Text := '';
  cbJK.ItemIndex := -1;
  Grid.ColWidths[5] := 0;
  id := '';
  btnEdit.Enabled := false;
  btnHapus.Enabled := false;
  btnSimpan.Caption := 'Simpan';
  edNama.SetFocus;
end;

procedure TfrmDepan.tampilData;
var
  iii: integer;
  str: String;
begin
  iii := 1;
  str := 'SELECT * FROM anggota';
  myQry(str);

  if DM.Qry.Eof then
  begin
    Grid.RowCount := 1;
  end else
  begin
    Grid.RowCount := DM.Qry.RecordCount + 1;
    while Not DM.Qry.Eof do
    begin
      with Grid do
      begin
        Cells[0, iii] := iii.ToString;
        Cells[1, iii] := DM.Qry.FieldByName('nama').AsString;
        Cells[2, iii] := DM.Qry.FieldByName('telepone').AsString;
        if DM.Qry.FieldByName('jenis_kelamin').AsString = 'p' then
        Cells[3, iii] := 'Perempuan' else
        Cells[3, iii] := 'Laki-laki';

        Cells[4, iii] := DM.Qry.FieldByName('tanggal_input').AsString;
        Cells[5, iii] := DM.Qry.FieldByName('id').AsString;
        inc(iii);
        DM.Qry.Next;
      end;
    end;
  end;
end;

end.
