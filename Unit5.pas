unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm5 = class(TForm)
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
ra: pchar;
       

implementation

{$R *.dfm}

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
rename('*.mp3',ra);
end;

end.
