{ *
  * Copyright (C) 2014-2015 ozok <ozok26@gmail.com>
  *
  * This file is part of TFlickrDownloader.
  *
  * TFlickrDownloader is free software: you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
  * the Free Software Foundation, either version 2 of the License, or
  * (at your option) any later version.
  *
  * TFlickrDownloader is distributed in the hope that it will be useful,
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
  * along with TFlickrDownloader.  If not, see <http://www.gnu.org/licenses/>.
  *
  * }

unit UnitAbout;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, acPNG,
  Vcl.ExtCtrls, JvExControls, JvScrollText, ShellAPI, sButton, sSkinProvider,
  sPageControl, sLabel;

type
  TAboutForm = class(TForm)
    Button1: TsButton;
    Image1: TImage;
    Label2: TsLabel;
    Label4: TsLabel;
    Label5: TsLabel;
    Button2: TsButton;
    Button3: TsButton;
    Label1: TsLabel;
    Label6: TsLabel;
    Label7: TsLabel;
    Button4: TsButton;
    sSkinProvider1: TsSkinProvider;
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    sTabSheet2: TsTabSheet;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutForm: TAboutForm;

implementation

{$R *.dfm}

procedure TAboutForm.Button1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TAboutForm.Button2Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'https://sourceforge.net/projects/tphotodownloader/', nil, nil, SW_SHOWNORMAL);
end;

procedure TAboutForm.Button3Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=YHZYV3F9LHEDL', nil, nil, SW_SHOWNORMAL);
end;

procedure TAboutForm.Button4Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'https://tflickrdownloader.codeplex.com/', nil, nil, SW_SHOWNORMAL);
end;

procedure TAboutForm.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Self.Close;
end;

procedure TAboutForm.Label1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://jvcl.delphi-jedi.org/', nil, nil, SW_SHOWNORMAL);
end;

procedure TAboutForm.Label6Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'www.alphaskins.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TAboutForm.Label7Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'https://code.google.com/p/ccr-exif/', nil, nil, SW_SHOWNORMAL);
end;

end.
