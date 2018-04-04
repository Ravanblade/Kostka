unit kostka;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Menus, StdCtrls;

type
   kwadrat = array [1..3,1..3] of integer;
   obrot = array [1..3] of integer;

  { TForm1 }
type
  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button3: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    Button38: TButton;
    Button39: TButton;
    Button4: TButton;
    Button40: TButton;
    Button41: TButton;
    Button42: TButton;
    Button43: TButton;
    Button44: TButton;
    Button45: TButton;
    Button46: TButton;
    Button47: TButton;
    Button48: TButton;
    Button49: TButton;
    Button5: TButton;
    Button50: TButton;
    Button51: TButton;
    Button52: TButton;
    Button53: TButton;
    Button54: TButton;
    Button55: TButton;
    Button56: TButton;
    Button57: TButton;
    Button58: TButton;
    Button59: TButton;
    Button6: TButton;
    Button60: TButton;
    Button61: TButton;
    Button62: TButton;
    Button63: TButton;
    Button64: TButton;
    Button65: TButton;
    Button66: TButton;
    Button67: TButton;
    Button68: TButton;
    Button69: TButton;
    Button7: TButton;
    Button70: TButton;
    Button71: TButton;
    Button72: TButton;
    Button8: TButton;
    Button9: TButton;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    MainMenu1: TMainMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    item1: TMenuItem;
    Panel1: TPanel;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button46Click(Sender: TObject);
    procedure Button47Click(Sender: TObject);
    procedure Button48Click(Sender: TObject);
    procedure Button55Click(Sender: TObject);
    procedure Button56Click(Sender: TObject);
    procedure Button57Click(Sender: TObject);
    procedure Button67Click(Sender: TObject);
    procedure Button68Click(Sender: TObject);
    procedure Button69Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure item1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    function rysujKwadrat(a: kwadrat; off_x : integer; off_y : integer; szerokosc : integer) : boolean;
    procedure generujSciany();
    procedure przesunSciane(nr : integer; poz : integer; kierunek : boolean);
    function obrocMacierzLewo(a : kwadrat) : kwadrat;
    function obrocMacierzPrawo(a : kwadrat) : kwadrat;
    procedure rysuj();
    procedure Timer1Timer(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  //s1,s2,s3,s4,s5,s6 : kwadrat; // sciany
  s : array [1..6] of kwadrat; // sciany

implementation

{$R *.lfm}

{ TForm1 }

function TForm1.rysujKwadrat(a: kwadrat; off_x : integer; off_y : integer; szerokosc : integer) : boolean;
var
  i,j : integer;
begin

for i := 1 to 3 do
  for j := 1 to 3 do
    begin
       case a[i,j] of
         0: panel1.Canvas.Brush.Color:= clGreen;
         1: panel1.Canvas.Brush.Color:= clRed;
         2: panel1.Canvas.Brush.Color:= clBlue;
         3: panel1.Canvas.Brush.Color := clPurple;
         4: panel1.Canvas.Brush.Color := clYellow;
         5: panel1.Canvas.Brush.Color := clWhite;
       end;

       panel1.Canvas.Rectangle(off_x + i*szerokosc, off_y + (j*szerokosc) , off_x + (i*szerokosc) + szerokosc, off_y + (j*szerokosc) + szerokosc) ;

   end;
end;

procedure TForm1.generujSciany();
var
  i,j,k : integer;
begin
for k := 1 to 6 do
  for i := 1 to 3 do
    for j := 1 to 3 do
        s[k,i,j] := k-1;
end;

procedure TForm1.item1Click(Sender: TObject);
begin


end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  Application.Terminate();
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  przesunSciane(1,2, false);
  rysuj();
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  przesunSciane(1,3, false);
  rysuj();
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  przesunSciane(2,1,false);
  rysuj();
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
  przesunSciane(2,2,false);
  rysuj();
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
  przesunSciane(2,3,false);
  rysuj();
end;

procedure TForm1.Panel1Click(Sender: TObject);
begin

end;

procedure TForm1.rysuj();
var
  szer : integer;
  i : integer;
begin
  szer := 30;
  panel1.DoubleBuffered:=true;
  panel1.Canvas.Brush.Color:= clDefault;
  panel1.Canvas.Clear;
  panel1.Repaint;
  for i := 0 to 2 do
      rysujKwadrat(s[i+1], i*150, 50, szer);

  for i := 3 to 5 do
      rysujKwadrat(s[i+1], (i-3)*150, 250, szer);


end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  rysuj();
end;

function TForm1.obrocMacierzLewo(a : kwadrat) : kwadrat;
var
  m : kwadrat;
  i,j : integer;
begin

for i := 1 to 3 do
  for j := 1 to 3 do
    m[i,j] := a[j,4 - i];

  obrocMacierzLewo := m;
end;

function TForm1.obrocMacierzPrawo(a : kwadrat) : kwadrat;
var
  m : kwadrat;
  i,j : integer;
begin

for i := 1 to 3 do
  for j := 1 to 3 do
    m[i,j] := a[4 - j,i];

  obrocMacierzPrawo := m;
end;

procedure TForm1.przesunSciane(nr : integer; poz : integer; kierunek : boolean);
var
tmp1 : obrot;
tmp2 : obrot;
i : integer;
begin
//
if nr = 1 then
begin

    for i := 1 to 3 do
    begin
      tmp1[i] := s[2,poz,i];
      s[2,poz,i] := s[1,poz,i];
      tmp2[i] := s[3,poz,i];
      s[3,poz,i] := tmp1[i];
      tmp1[i] := s[4,poz,i];
      s[4,poz,i] := tmp2[i];
      s[1,poz,i] := tmp1[i];
    end;

    if (poz = 3) then
       s[6] := obrocMacierzLewo(s[6]);

    if (poz = 1) then
       s[5] := obrocMacierzPrawo(s[5]);
end;

//
if nr = 2 then
begin

      for i := 1 to 3 do
      begin
          tmp1[i] := s[3,i,poz];
          s[3,i,poz] := s[6,i,poz];
          tmp2[i] := s[5,i,poz];
          s[5,i,poz] := tmp1[i];
          tmp1[i] := s[1,i,poz];
          s[1,i,poz] := tmp2[i];
          s[6,i,poz] := tmp1[i];
      end;

      if (poz = 3) then
        s[4] := obrocMacierzLewo(s[4]);

      if (poz = 1) then
        s[2] := obrocMacierzPrawo(s[2]);
end;

if nr = 3 then
       begin
         for i := 1 to 3 do
         begin
            tmp1[i] := s[3,poz,i];
            s[3,poz,i] := s[4,poz,i];
            tmp2[i] := s[2,poz,i];
            s[2,poz,i] := tmp1[i];
            tmp1[i] := s[1,poz,i];
            s[1,poz,i] := tmp2[i];
            s[4,poz,i] := tmp1[i];
          end;
         if (poz = 1) then
            s[5] := obrocMacierzPrawo(s[5]);

         if (poz = 3) then
            s[6] := obrocMacierzLewo(s[6]);

       end;

if nr = 4 then
begin
          for i := 1 to 3 do
         begin
            tmp1[i] := s[5,i,poz];
            s[5,i,poz] := s[1,i,poz];
            tmp2[i] := s[3,i,poz];
            s[3,i,poz] := tmp1[i];
            tmp1[i] := s[6,i,poz];
            s[6,i,poz] := tmp2[i];
            s[1,i,poz] := tmp1[i];
          end;

          if (poz = 1) then
             s[2] := obrocMacierzLewo(s[2]);

          if (poz = 3) then
             s[4] := obrocMacierzPrawo(s[4]);
end;
//sciana 6 i 5
//P
if nr = 5 then
begin

      for i := 1 to 3 do
       begin
          tmp1[i] := s[1,i,poz];
          s[1,i,poz] := s[6,i,poz];
          tmp2[i] := s[5,i,poz];
          s[5,i,poz] := tmp1[i];
          tmp1[i] := s[3,i,poz];
          s[3,i,poz] := tmp2[i];
          s[6,i,poz] := tmp1[i];
        end;

      if (poz = 1) then
         s[2] := obrocMacierzLewo(s[2]);

      if (poz = 3) then
         s[4] := obrocMacierzPrawo(s[4]);
end;
//L
if nr = 6 then
begin

      for i := 1 to 3 do
       begin
          tmp1[i] := s[3,i,poz];
          s[3,i,poz] := s[6,i,poz];
          tmp2[i] := s[5,i,poz];
          s[5,i,poz] := tmp1[i];
          tmp1[i] := s[1,i,poz];
          s[1,i,poz] := tmp2[i];
          s[6,i,poz] := tmp1[i];
        end;

      if (poz = 1) then
         s[2] := obrocMacierzPrawo(s[2]);

      if (poz = 3) then
         s[4] := obrocMacierzLewo(s[4]);
end;
//5
//G
if nr = 7 then
begin

    for i := 1 to 3 do
    begin
      tmp1[i] := s[2,poz,i];
      s[2,poz,i] := s[5,poz,i];
      tmp2[i] := s[6,poz,i];
      s[6,poz,i] := tmp1[i];
      tmp1[i] := s[4,poz,i];
      s[4,poz,i] := tmp2[i];
      s[5,poz,i] := tmp1[i];
    end;

    if (poz = 1) then
      s[3] := obrocMacierzLewo(s[3]);

    if (poz = 3) then
      s[1] := obrocMacierzPrawo(s[1]);

end;
//D
if nr = 8 then
begin

      for i := 1 to 3 do
       begin
          tmp1[i] := s[4,poz,i];
          s[4,poz,i] := s[5,poz,i];
          tmp2[i] := s[6,poz,i];
          s[6,poz,i] := tmp1[i];
          tmp1[i] := s[2,poz,i];
          s[2,poz,i] := tmp2[i];
          s[5,poz,i] := tmp1[i];
        end;

      if (poz = 1) then
         s[3] := obrocMacierzLewo(s[3]);

      if (poz = 3) then
         s[1] := obrocMacierzPrawo(s[1]);
end;
//s4 P
if nr = 9 then
begin
      for i := 1 to 3 do
       begin
          tmp1[i] := s[5,i,poz];
          s[5,i,poz] := s[4,i,poz];
          tmp2[i] := s[2,i,poz];
          s[2,i,poz] := tmp1[i];
          tmp1[i] := s[6,i,poz];
          s[6,i,poz] := tmp2[i];
          s[4,i,poz] := tmp1[i];
        end;

      if (poz = 1) then
         s[1] := obrocMacierzLewo(s[1]);

      if (poz = 3) then
         s[3] := obrocMacierzPrawo(s[3]);
end;
//s4 L
if nr = 10 then
begin
      for i := 1 to 3 do
       begin
          tmp1[i] := s[2,i,poz];
          s[2,i,poz] := s[6,i,poz];
          tmp2[i] := s[5,i,poz];
          s[5,i,poz] := tmp1[i];
          tmp1[i] := s[4,i,poz];
          s[4,i,poz] := tmp2[i];
          s[6,i,poz] := tmp1[i];
        end;

      if (poz = 1) then
         s[1] := obrocMacierzPrawo(s[1]);

      if (poz = 3) then
         s[3] := obrocMacierzLewo(s[3]);
end;
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
 generujSciany();
 rysuj();
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  generujSciany();
  rysuj();
end;

procedure TForm1.FormPaint(Sender: TObject);
begin
  rysuj();
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   przesunSciane(1,1, false);
   rysuj();
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  przesunSciane(7,3, false);
  rysuj();
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  przesunSciane(7,2, false);
  rysuj();
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  przesunSciane(7,1, false);
  rysuj();
end;

procedure TForm1.Button25Click(Sender: TObject);
begin
  przesunSciane(3,3, false);
  rysuj();
end;

procedure TForm1.Button26Click(Sender: TObject);
begin
  przesunSciane(3,2, false);
  rysuj();
end;

procedure TForm1.Button27Click(Sender: TObject);
begin
  przesunSciane(3,1, false);
  rysuj();
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   przesunSciane(1,2, false);
   rysuj();
end;

procedure TForm1.Button31Click(Sender: TObject);
begin
  przesunSciane(8,1, false);
  rysuj();
end;

procedure TForm1.Button32Click(Sender: TObject);
begin
  przesunSciane(8,2, false);
  rysuj();
end;

procedure TForm1.Button33Click(Sender: TObject);
begin
  przesunSciane(8,3, false);
  rysuj();
end;

procedure TForm1.Button37Click(Sender: TObject);
begin
  przesunSciane(2,1, false);
  rysuj();
end;

procedure TForm1.Button38Click(Sender: TObject);
begin
   przesunSciane(2,2, false);
   rysuj();
end;

procedure TForm1.Button39Click(Sender: TObject);
begin
  przesunSciane(2,3, false);
  rysuj();
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   przesunSciane(1,3, false);
   rysuj();
end;

procedure TForm1.Button46Click(Sender: TObject);
begin
  przesunSciane(10,1, false);
  rysuj();
end;

procedure TForm1.Button47Click(Sender: TObject);
begin
  przesunSciane(10,2, false);
  rysuj();
end;

procedure TForm1.Button48Click(Sender: TObject);
begin
  przesunSciane(10,3, false);
  rysuj();
end;

procedure TForm1.Button55Click(Sender: TObject);
begin
  przesunSciane(4,1, false);
  rysuj();
end;

procedure TForm1.Button56Click(Sender: TObject);
begin
  przesunSciane(4,2, false);
  rysuj();
end;

procedure TForm1.Button57Click(Sender: TObject);
begin
  przesunSciane(4,3, false);
  rysuj();
end;

procedure TForm1.Button67Click(Sender: TObject);
begin
  przesunSciane(9,1, false);
  rysuj();
end;

procedure TForm1.Button68Click(Sender: TObject);
begin
  przesunSciane(9,2, false);
  rysuj();
end;

procedure TForm1.Button69Click(Sender: TObject);
begin
  przesunSciane(9,3, false);
  rysuj();
end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
  przesunSciane(1,1, false);
  rysuj();
end;

end.

