unit unitMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls, Spin, Windows;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    gbSA: TGroupBox;
    bgSB: TGroupBox;
    gbSF: TGroupBox;
    gbSE: TGroupBox;
    gbSG: TGroupBox;
    gbSH: TGroupBox;
    gbSD: TGroupBox;
    gbSC: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    img: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    SpinEdit1: TSpinEdit;
    procedure Button1Click(Sender: TObject);
    procedure Edit23Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure imgPaint(Sender: TObject);
    procedure SAEnterOrChange(Sender: TObject);
    procedure SBEnterOrChange(Sender: TObject);
    procedure SCEnterOrChange(Sender: TObject);
    procedure SDEnterOrChange(Sender: TObject);
    procedure SEEnterOrChange(Sender: TObject);
    procedure SFEnterOrChange(Sender: TObject);
    procedure SGEnterOrChange(Sender: TObject);
    procedure SHEnterOrChange(Sender: TObject);
  private
    SA, SB, SC, SD, SF, SE, SG, SH, M: string;
  public
    procedure DrawMap();
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.DrawMap();
begin
  //img.Canvas.FillRect(img.Canvas.ClipRect);
  img.Canvas.Draw(0, 0, img.Picture.Graphic);

  img.Canvas.Font.Color := $E6A131;
  img.Canvas.Font.Size := 11;
  img.Canvas.Font.Style := [fsBold];
  img.Canvas.TextOut((460 div 2) - (img.Canvas.TextWidth(M) div 2), 25, M);

  img.Canvas.Pen.Color := clRed;
  img.Canvas.Pen.Width := 2;
  img.Canvas.Font.Color := clRed;
  img.Canvas.Font.Size := 11;
  img.Canvas.Font.Style := [fsBold];

  if SA <> '' then
    begin
         img.Canvas.Line(83,    197,     83-19, 197-36);
         img.Canvas.Line(83-19, 197-36,  83-19, 197-108);
         img.Canvas.Line(83-19, 197-108, 83-14, 197-108);
      img.Canvas.TextOut(83-10, 197-119, SA);
    end;

  if SB <> '' then
    begin
         img.Canvas.Line(114,    186,    114-19, 186-38);
         img.Canvas.Line(114-19, 186-38, 114-19, 186-73);
         img.Canvas.Line(114-19, 186-73, 114-14, 186-73);
      img.Canvas.TextOut(114-10, 186-84, SB);
    end;

  if SC <> '' then
    begin
         img.Canvas.Line(348,    186,    348+19, 186-38);
         img.Canvas.Line(348+19, 186-38, 348+19, 186-73);
         img.Canvas.Line(348+19, 186-73, 348+14, 186-73);
      img.Canvas.TextOut(348+10-img.Canvas.TextWidth(SC), 186-84, SC);
    end;

  if SD <> '' then
    begin
         img.Canvas.Line(381,    197,     381+19, 197-36);
         img.Canvas.Line(381+19, 197-36,  381+19, 197-108);
         img.Canvas.Line(381+19, 197-108, 381+14, 197-108);
      img.Canvas.TextOut(381+10-img.Canvas.TextWidth(SD), 197-119, SD);
    end;

  if SE <> '' then
    begin
         img.Canvas.Line(37,    161,     37-17,   161-25);
         img.Canvas.Line(37-17, 161-25,  37-17,   161-129);
         img.Canvas.Line(37-17, 161-129, 37-12,   161-129);
      img.Canvas.TextOut(37-8, 161-140, SE);
    end;

  if SF <> '' then
    begin
         img.Canvas.Line(38,   140,    38-8,   140-12);
         img.Canvas.Line(38-8, 140-12, 38-8,   140-81);
         img.Canvas.Line(38-8, 140-81, 38-3,   140-81);
      img.Canvas.TextOut(38, 140-92, SF);
    end;

  if SG <> '' then
    begin
         img.Canvas.Line(427,    161,     427+17,   161-25);
         img.Canvas.Line(427+17, 161-25,  427+17,   161-129);
         img.Canvas.Line(427+17, 161-129, 427+12,   161-129);
      img.Canvas.TextOut(427+8-img.Canvas.TextWidth(SG), 161-140, SG);
    end;

  if SH <> '' then
    begin
         img.Canvas.Line(425,   140,    425+8,   140-12);
         img.Canvas.Line(425+8, 140-12, 425+8,   140-81);
         img.Canvas.Line(425+8, 140-81, 425+3,   140-81);
      img.Canvas.TextOut(425-img.Canvas.TextWidth(SH), 140-92, SH);
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  SA := Trim(Edit1.Text);
  if Trim(Edit2.Text) <> '' then SA := Trim(Edit2.Text);
  if Trim(Edit3.Text) <> '' then SA := Trim(Edit3.Text);
  SB := Trim(Edit4.Text);
  if Trim(Edit5.Text) <> '' then SB := Trim(Edit5.Text);
  if Trim(Edit6.Text) <> '' then SB := Trim(Edit6.Text);
  SC := Trim(Edit7.Text);
  if Trim(Edit8.Text) <> '' then SC := Trim(Edit8.Text);
  if Trim(Edit9.Text) <> '' then SC := Trim(Edit9.Text);
  SD := Trim(Edit10.Text);
  if Trim(Edit11.Text) <> '' then SD := Trim(Edit11.Text);
  if Trim(Edit12.Text) <> '' then SD := Trim(Edit12.Text);
  SE := Trim(Edit13.Text);
  if Trim(Edit14.Text) <> '' then SE := Trim(Edit14.Text);
  if Trim(Edit15.Text) <> '' then SE := Trim(Edit15.Text);
  SF := Trim(Edit16.Text);
  if Trim(Edit17.Text) <> '' then SF := Trim(Edit17.Text);
  SG := Trim(Edit18.Text);
  if Trim(Edit19.Text) <> '' then SG := Trim(Edit19.Text);
  if Trim(Edit20.Text) <> '' then SG := Trim(Edit20.Text);
  SH := Trim(Edit21.Text);
  if Trim(Edit22.Text) <> '' then SH := Trim(Edit22.Text);
  M := Trim(Edit23.Text);
end;

procedure TForm1.imgPaint(Sender: TObject);
begin
  DrawMap;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  p: string;
begin
  p := GetTempDir + 'SwitchMap\';
  if not DirectoryExists(p) then
    CreateDir(p);
  // image
  Img.Picture.Graphic.SaveToFile(p+'map.png');
  // main code
  Memo1.Lines.SaveToFile(p+'main.lua');
  // model prefs
  if not FileExists(p+IntToStr(SpinEdit1.Value)+'.lua') or
    (MessageDlg('ModelNo= '+IntToStr(SpinEdit1.Value)+' prefs is exists, owerride?', mtConfirmation, mbOKCancel, -1) = mrOK) then
     with memo2 do
       begin
         Lines.Clear;
         Lines.Add('return {');
         Lines.Add('  mn=  "'+Trim(Edit23.Text)+'",');
         Lines.Add('  sa=  {"'+Trim(Edit1.Text)+'", "'+Trim(Edit2.Text)+'", "'+Trim(Edit3.Text)+'"},');
         Lines.Add('  sb=  {"'+Trim(Edit4.Text)+'", "'+Trim(Edit5.Text)+'", "'+Trim(Edit6.Text)+'"},');
         Lines.Add('  sc=  {"'+Trim(Edit7.Text)+'", "'+Trim(Edit8.Text)+'", "'+Trim(Edit9.Text)+'"},');
         Lines.Add('  sd=  {"'+Trim(Edit10.Text)+'", "'+Trim(Edit11.Text)+'", "'+Trim(Edit12.Text)+'"},');
         Lines.Add('  se=  {"'+Trim(Edit13.Text)+'", "'+Trim(Edit14.Text)+'", "'+Trim(Edit15.Text)+'"},');
         Lines.Add('  sf=  {"'+Trim(Edit16.Text)+'", "", "'+Trim(Edit17.Text)+'"},');
         Lines.Add('  sg=  {"'+Trim(Edit18.Text)+'", "'+Trim(Edit19.Text)+'", "'+Trim(Edit20.Text)+'"},');
         Lines.Add('  sh=  {"'+Trim(Edit21.Text)+'", "", "'+Trim(Edit22.Text)+'"}');
         Lines.Add('}');
         Lines.SaveToFile(p+IntToStr(SpinEdit1.Value)+'.lua');
         ShellExecute(0, 'open', PChar(p), nil, nil, SW_NORMAL);
       end;
end;

procedure TForm1.Edit23Change(Sender: TObject);
begin
  M := Trim(TEdit(Sender).Text);
  DrawMap;
end;

procedure TForm1.SAEnterOrChange(Sender: TObject);
begin
  SA := Trim(TEdit(Sender).Text);
  DrawMap;
end;

procedure TForm1.SBEnterOrChange(Sender: TObject);
begin
  SB := Trim(TEdit(Sender).Text);
  DrawMap;
end;

procedure TForm1.SCEnterOrChange(Sender: TObject);
begin
  SC := Trim(TEdit(Sender).Text);
  DrawMap;
end;

procedure TForm1.SDEnterOrChange(Sender: TObject);
begin
  SD := Trim(TEdit(Sender).Text);
  DrawMap;
end;

procedure TForm1.SFEnterOrChange(Sender: TObject);
begin
  SF := Trim(TEdit(Sender).Text);
  DrawMap;
end;

procedure TForm1.SEEnterOrChange(Sender: TObject);
begin
  SE := Trim(TEdit(Sender).Text);
  DrawMap;
end;

procedure TForm1.SGEnterOrChange(Sender: TObject);
begin
  SG := Trim(TEdit(Sender).Text);
  DrawMap;
end;

procedure TForm1.SHEnterOrChange(Sender: TObject);
begin
  SH := Trim(TEdit(Sender).Text);
  DrawMap;
end;


end.

