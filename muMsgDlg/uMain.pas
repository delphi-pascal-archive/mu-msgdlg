unit uMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, muMsgDlg_7;

type
  TFmain = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmain: TFmain;

implementation

{$R *.dfm}

procedure TFmain.Button1Click(Sender: TObject);
begin
  MsgDlg('<b><+10><#0000FF>Внимание!<br><br>'+
         '<+5><#558833><i>заполнены не все данные!<br><br>'+
         '<+2><#FF5500>заполните поле <b><u>Номер счета</u></b> и продожайте работу!',mtWarning,[mbOk]);
end;

procedure TFmain.Button2Click(Sender: TObject);
begin
  MsgDlg('<b><+10><#0000FF>Ошибка!<br><br>Тип данных <b><+2>не поддерживается!</b>',mtError,[mbCancel]);
end;

procedure TFmain.Button3Click(Sender: TObject);
begin
  If MsgDlg('<+4>Оплата за услуги <b><u>связи!<br><br>'+
            '<+4>к оплате: <u><b><#0000FF>18,25<br><br>'+
            '<+6>Продолжить?',mtConfirmation,[mbYes,mbNo])=mrYes Then
    Begin
      MsgDlg('<+15><#005500>Оплачено!',mtInformation,[mbOk]);
    End;

end;

end.
