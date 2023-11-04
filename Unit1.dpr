unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a, b, c, e: integer;
  str,d: string;
  checker: boolean;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if button1.Caption='опнбепхрэ' then
    begin
        e:=strToInt(d);
        edit1.Text:='';
        if c=e then
          messageDlg('онгдпюбкъч, нрбер опюбхкэмши', mtconfirmation, [MBOK],0)

        else
          messageDlg('меопюбхкэмн, онопнасире еые',mtError, [MBOK],0);
    end;

  randomize;

  a:=random(98)-49;
  b:=random(98)-49;
  c:=random(100);
  edit1.Show;
  groupBox1.Caption:='бБЕДХРЕ НРБЕР Б НЙМН';
  button1.Caption:='якедсчыхи';
  if c < 50 then
    begin
      c:=a+b;
      str:=intToStr(a) + ' + ' + intToStr(b) + ' =';
      Label1.Caption:= str;
    end
  else
    begin
      c:=a-b;
      str:=intToStr(a) + ' - ' + intToStr(b) + ' =';
      Label1.Caption:= str;
    end;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

    begin
      d:=edit1.Text;
      button1.Caption:='опнбепхрэ';
    end;

end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['-'..'9', #8])then
  Key:=#0;
case Key of
  #8,'0'..'9' :  ;
           '-': if Length(Edit1.Text) <> 0 then
                  Key := Chr(0);
                else
                  key := Chr(0);
    end;
end;

end.
