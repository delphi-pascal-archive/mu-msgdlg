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
  MsgDlg('<b><+10><#0000FF>��������!<br><br>'+
         '<+5><#558833><i>��������� �� ��� ������!<br><br>'+
         '<+2><#FF5500>��������� ���� <b><u>����� �����</u></b> � ���������� ������!',mtWarning,[mbOk]);
end;

procedure TFmain.Button2Click(Sender: TObject);
begin
  MsgDlg('<b><+10><#0000FF>������!<br><br>��� ������ <b><+2>�� ��������������!</b>',mtError,[mbCancel]);
end;

procedure TFmain.Button3Click(Sender: TObject);
begin
  If MsgDlg('<+4>������ �� ������ <b><u>�����!<br><br>'+
            '<+4>� ������: <u><b><#0000FF>18,25<br><br>'+
            '<+6>����������?',mtConfirmation,[mbYes,mbNo])=mrYes Then
    Begin
      MsgDlg('<+15><#005500>��������!',mtInformation,[mbOk]);
    End;

end;

end.
