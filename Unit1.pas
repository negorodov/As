unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ShellAPI, ExtCtrls, jpeg, Buttons;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Button5: TButton;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    SpeedButton2: TSpeedButton;
    procedure Button122Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4;
 function MoveDir(fromDir, toDir: String): Boolean;
var
fos: TSHFileOpStruct;
toDir2: string;
begin
toDir2 :=toDir;
ZeroMemory(@fos, SizeOf(fos));
with fos do
begin
wFunc := FO_MOVE;
//fFlags := FOF_FILESONLY;
fFlags:= FOF_SIMPLEPROGRESS;
fflags:= fflags or FOF_NOCONFIRMATION;
fflags:= fflags or FOF_SILENT;
pFrom := PChar(fromDir + #0);
pTo := PChar(toDir2);
end;
Result := (0 = ShFileOperation(fos));
end;
{$R *.dfm}

procedure TForm1.Button122Click(Sender: TObject);
begin
if MoveDir('*.mp3', edit1.text) then
         ShowMessage('успешно');
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
if MoveDir('*.mp4', edit2.text) then
         ShowMessage('успешно');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if MoveDir('*.3gp', edit3.text) then
         ShowMessage('успешно');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
if MoveDir('*.flac', edit3.text) then
         ShowMessage('успешно');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
form2.show;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
if MoveDir('*.jpeg', edit4.text) then
         ShowMessage('успешно');
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
if MoveDir('*.png', edit5.text) then
         ShowMessage('успешно');
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
if MoveDir('*.jpg', edit6.text) then
         ShowMessage('успешно');
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
if MoveDir('*.txt', edit7.text) then
         ShowMessage('успешно');
end;

procedure TForm1.Image9Click(Sender: TObject);
begin
if MoveDir('*.mp3', edit1.text) then
         ShowMessage('успешно');
end;

procedure TForm1.Image8Click(Sender: TObject);
begin
if MoveDir('*.mp4', edit2.text) then
         ShowMessage('успешно');
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
if MoveDir('*.3gp', edit3.text) then
         ShowMessage('успешно');
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
if MoveDir('*.flac', edit4.text) then
         ShowMessage('успешно');
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
if MoveDir('*.jpeg', edit5.text) then
         ShowMessage('успешно');
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
if MoveDir('*.png', edit6.text) then
         ShowMessage('успешно');
end;

procedure TForm1.Image6Click(Sender: TObject);
begin
if MoveDir('*.jpg', edit7.text) then
         ShowMessage('успешно');
end;

procedure TForm1.Image7Click(Sender: TObject);
begin
if MoveDir('*.txt', edit8.text) then
         ShowMessage('успешно');
end;

procedure TForm1.Image14Click(Sender: TObject);
begin
MoveDir('*.txt', edit8.text);
 MoveDir('*.jpg', edit7.text);
 MoveDir('*.png', edit6.text);
 MoveDir('*.jpeg', edit5.text);
 MoveDir('*.flac', edit4.text);
MoveDir('*.3gp', edit3.text);
MoveDir('*.mp4', edit2.text);
MoveDir('*.mp3', edit1.text);
MoveDir('*.pdf', edit10.text);
MoveDir('*.zip', edit9.text);
 MoveDir('*.rar', edit9.text);
 MoveDir('*.jfif', edit11.text);
 MoveDir('*.psd', edit12 .text);
 ShowMessage('успешно');


end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
form3.Show;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
form4.show;
end;

procedure TForm1.Image10Click(Sender: TObject);
begin
MoveDir('*.zip', edit9.text);
 MoveDir('*.rar', edit9.text);
         ShowMessage('успешно');
end;

procedure TForm1.Image11Click(Sender: TObject);
begin
if MoveDir('*.pdf', edit10.text) then
         ShowMessage('успешно');
end;

procedure TForm1.Image13Click(Sender: TObject);
begin
if MoveDir('*.psd', edit12 .text) then
         ShowMessage('успешно');
end;

procedure TForm1.Image12Click(Sender: TObject);
begin
if MoveDir('*.jfif', edit11.text) then
         ShowMessage('успешно');
end;

end.
