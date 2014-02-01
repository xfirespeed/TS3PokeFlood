unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, IniFiles;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TLabeledEdit;
    Edit2: TLabeledEdit;
    Edit3: TLabeledEdit;
    Edit4: TLabeledEdit;
    Edit5: TLabeledEdit;
    Edit6: TLabeledEdit;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit7: TLabeledEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

function EnDecryptString(StrValue : String; Chave: Word) : String;
var
I: Integer;
OutValue : String;
begin
  OutValue := '';
  for I := 1 to Length(StrValue) do
  OutValue := OutValue + char(Not(ord(StrValue[I])-Chave));
  Result := OutValue;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  ArqIni: TIniFile;
  Password: string;
begin
Form1.Button1.Enabled := True;
ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'config.ini');
ArqIni.WriteString('Conexão', 'SvIP', Edit1.Text);
ArqIni.WriteString('Conexão', 'SvPort', Edit2.Text);
ArqIni.WriteString('Conexão', 'QrPort', Edit3.Text);
ArqIni.WriteString('Conexão', 'QrName', Edit4.Text);
ArqIni.WriteString('Conexão', 'Login', Edit5.Text);
Password := EnDecryptString(Edit6.text, 236);
ArqIni.WriteString('Conexão', 'Password', Password);
ArqIni.WriteString('Configs', 'UserDBID', Edit7.Text);
if ComboBox1.ItemIndex = -1 then begin
ArqIni.WriteString('Configs', 'PokesML', '10');
Close;
end
else if ComboBox1.ItemIndex = 0 then begin
ArqIni.WriteString('Configs', 'PokesML', '30');
Close;
end
else if ComboBox1.ItemIndex = 1 then begin
ArqIni.WriteString('Configs', 'PokesML', '50');
Close;
end
else if ComboBox1.ItemIndex = 2 then begin
ArqIni.WriteString('Configs', 'PokesML', '100');
Close;
end
else if ComboBox1.ItemIndex = 3 then begin
ArqIni.WriteString('Configs', 'PokesML', '300');
Close;
end
else if ComboBox1.ItemIndex = 4 then begin
ArqIni.WriteString('Configs', 'PokesML', '500');
Close;
end
else if ComboBox1.ItemIndex = 5 then begin
ArqIni.WriteString('Configs', 'PokesML', '800');
Close;
end
else if ComboBox1.ItemIndex = 6 then begin
ArqIni.WriteString('Configs', 'PokesML', '1000');
Close;
end
else if ComboBox1.ItemIndex = 7 then
ArqIni.WriteString('Configs', 'PokesML', '2000');
Close;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Form2.Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
var
  ArqIni: TIniFile;
  Password: string;
  PokesML: string;
begin
ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'config.ini');
Edit1.Text := ArqIni.ReadString('Conexão', 'SvIP', '');
Edit2.Text := ArqIni.ReadString('Conexão', 'SvPort', '');
Edit3.Text := ArqIni.ReadString('Conexão', 'QrPort', '');
Edit4.Text := ArqIni.ReadString('Conexão', 'QrName', '');
Edit5.Text := ArqIni.ReadString('Conexão', 'Login', '');
Password   := ArqIni.ReadString('Conexão', 'Password', '');
Password   := EnDecryptString(Password, 236);
Edit6.Text := Password;
Edit7.Text := ArqIni.ReadString('Configs', 'UserDBID', '');
PokesML    := ArqIni.ReadString('Configs', 'PokesML', '');
if PokesML = '10' then begin
ComboBox1.ItemIndex := -1;
end
else if PokesML = '30' then begin
ComboBox1.ItemIndex := 0;
end
else if PokesML = '50' then begin
ComboBox1.ItemIndex := 1;
end
else if PokesML = '100' then begin
ComboBox1.ItemIndex := 2;
end
else if PokesML = '300' then begin
ComboBox1.ItemIndex := 3;
end
else if PokesML = '500' then begin
ComboBox1.ItemIndex := 4;
end
else if PokesML = '800' then begin
ComboBox1.ItemIndex := 5;
end
else if PokesML = '1000' then begin
ComboBox1.ItemIndex := 6;
end
else if PokesML = '2000' then begin
ComboBox1.ItemIndex := 7;
end
end;

end.
