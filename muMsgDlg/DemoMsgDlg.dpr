program DemoMsgDlg;

uses
  Forms,
  uMain in 'uMain.pas' {Fmain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFmain, Fmain);
  Application.Run;
end.
