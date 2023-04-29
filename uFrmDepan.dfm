object frmDepan: TfrmDepan
  Left = 0
  Top = 0
  Caption = 'CRUD dengan Database MySql'
  ClientHeight = 575
  ClientWidth = 739
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 16
    Width = 578
    Height = 29
    Caption = 'CRUD Dengan DELPHI  dengan Database MYSQL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 59
    Width = 721
    Height = 174
    Caption = 'Form Input Data'
    TabOrder = 0
    object Label2: TLabel
      Left = 24
      Top = 43
      Width = 70
      Height = 13
      Caption = 'Nama Lengkap'
    end
    object Label3: TLabel
      Left = 24
      Top = 70
      Width = 38
      Height = 13
      Caption = 'Telepon'
    end
    object Label4: TLabel
      Left = 24
      Top = 97
      Width = 63
      Height = 13
      Caption = 'Jenis Kelamin'
    end
    object edNama: TEdit
      Left = 117
      Top = 40
      Width = 215
      Height = 21
      TabOrder = 0
      Text = 'edNama'
    end
    object edTelepon: TEdit
      Left = 117
      Top = 67
      Width = 215
      Height = 21
      TabOrder = 1
      Text = 'edTelepon'
    end
    object cbJK: TComboBox
      Left = 117
      Top = 94
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 2
      Items.Strings = (
        'Laki-laki'
        'Perempuan')
    end
    object btnSimpan: TButton
      Left = 456
      Top = 128
      Width = 75
      Height = 32
      Caption = 'Simpan'
      TabOrder = 3
      OnClick = btnSimpanClick
    end
    object btnEdit: TButton
      Left = 537
      Top = 128
      Width = 75
      Height = 32
      Caption = 'Edit'
      TabOrder = 4
      OnClick = btnEditClick
    end
    object btnHapus: TButton
      Left = 618
      Top = 128
      Width = 75
      Height = 32
      Caption = 'Hapus'
      TabOrder = 5
      OnClick = btnHapusClick
    end
  end
  object Grid: TAdvStringGrid
    Left = 8
    Top = 239
    Width = 723
    Height = 328
    Cursor = crDefault
    Color = clWhite
    ColCount = 6
    DrawingStyle = gdsClassic
    FixedCols = 0
    Options = [goVertLine, goHorzLine, goRangeSelect, goFixedRowDefAlign]
    ScrollBars = ssBoth
    TabOrder = 1
    GridLineColor = 15987699
    GridFixedLineColor = 15987699
    HoverRowCells = [hcNormal, hcSelected]
    OnDblClickCell = GridDblClickCell
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      'NO'
      'NAMA'
      'TELEPON'
      'JENIS KELAMIN'
      'TGL DIBUAT'
      'ID')
    ControlLook.FixedGradientHoverFrom = clGray
    ControlLook.FixedGradientHoverTo = clWhite
    ControlLook.FixedGradientDownFrom = clGray
    ControlLook.FixedGradientDownTo = clSilver
    ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownHeader.Font.Color = clWindowText
    ControlLook.DropDownHeader.Font.Height = -11
    ControlLook.DropDownHeader.Font.Name = 'Tahoma'
    ControlLook.DropDownHeader.Font.Style = []
    ControlLook.DropDownHeader.Visible = True
    ControlLook.DropDownHeader.Buttons = <>
    ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownFooter.Font.Color = clWindowText
    ControlLook.DropDownFooter.Font.Height = -11
    ControlLook.DropDownFooter.Font.Name = 'Tahoma'
    ControlLook.DropDownFooter.Font.Style = []
    ControlLook.DropDownFooter.Visible = True
    ControlLook.DropDownFooter.Buttons = <>
    Filter = <>
    FilterDropDown.Font.Charset = DEFAULT_CHARSET
    FilterDropDown.Font.Color = clWindowText
    FilterDropDown.Font.Height = -11
    FilterDropDown.Font.Name = 'Tahoma'
    FilterDropDown.Font.Style = []
    FilterDropDown.TextChecked = 'Checked'
    FilterDropDown.TextUnChecked = 'Unchecked'
    FilterDropDownClear = '(All)'
    FilterEdit.TypeNames.Strings = (
      'Starts with'
      'Ends with'
      'Contains'
      'Not contains'
      'Equal'
      'Not equal'
      'Larger than'
      'Smaller than'
      'Clear')
    FixedColWidth = 40
    FixedRowHeight = 22
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clBlack
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
    HoverButtons.Buttons = <>
    HoverButtons.Position = hbLeftFromColumnLeft
    HTMLSettings.ImageFolder = 'images'
    HTMLSettings.ImageBaseName = 'img'
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.Font.Charset = DEFAULT_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -11
    PrintSettings.Font.Name = 'Tahoma'
    PrintSettings.Font.Style = []
    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
    PrintSettings.FixedFont.Color = clWindowText
    PrintSettings.FixedFont.Height = -11
    PrintSettings.FixedFont.Name = 'Tahoma'
    PrintSettings.FixedFont.Style = []
    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
    PrintSettings.HeaderFont.Color = clWindowText
    PrintSettings.HeaderFont.Height = -11
    PrintSettings.HeaderFont.Name = 'Tahoma'
    PrintSettings.HeaderFont.Style = []
    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -11
    PrintSettings.FooterFont.Name = 'Tahoma'
    PrintSettings.FooterFont.Style = []
    PrintSettings.PageNumSep = '/'
    SearchFooter.ColorTo = clWhite
    SearchFooter.FindNextCaption = 'Find &next'
    SearchFooter.FindPrevCaption = 'Find &previous'
    SearchFooter.Font.Charset = DEFAULT_CHARSET
    SearchFooter.Font.Color = clWindowText
    SearchFooter.Font.Height = -11
    SearchFooter.Font.Name = 'Tahoma'
    SearchFooter.Font.Style = []
    SearchFooter.HighLightCaption = 'Highlight'
    SearchFooter.HintClose = 'Close'
    SearchFooter.HintFindNext = 'Find next occurrence'
    SearchFooter.HintFindPrev = 'Find previous occurrence'
    SearchFooter.HintHighlight = 'Highlight occurrences'
    SearchFooter.MatchCaseCaption = 'Match case'
    SearchFooter.ResultFormat = '(%d of %d)'
    SortSettings.DefaultFormat = ssAutomatic
    Version = '8.4.7.0'
    ColWidths = (
      40
      161
      164
      164
      172
      64)
  end
end
