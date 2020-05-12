unit jeu;



interface 
	
	procedure SetConsoleWindowSize;
	procedure afficheMot (mot : String; var cache : String);
	procedure essai (mot,cache:String; var gagne : boolean);
	
implementation 

uses Crt, Keyboard, kiki in 'units/kiki.pas',SysUtils, Windows;


procedure SetConsoleWindowSize;
var
  Rect: TSmallRect;
  Coord: TCoord;
begin
  Rect.Left := 1;
  Rect.Top := 1;
  Rect.Right := 100;  // notice horiz scroll bar once the following executes
  Rect.Bottom := 30;
  Coord.X := Rect.Right + 1 - Rect.Left;
  Coord.y := Rect.Bottom + 1 - Rect.Top;
  SetConsoleScreenBufferSize(GetStdHandle(STD_OUTPUT_HANDLE), Coord);
  SetConsoleWindowInfo(GetStdHandle(STD_OUTPUT_HANDLE), True, Rect);
end;


procedure afficheMot (mot : String; var cache : String );
var i : Integer;
begin
	cache:=mot;
	for i:=1 to length(mot) do 
	begin 
		if i mod 2 = 0 then 
		begin
			cache[i]:=mot[i];
		end 
		else 
		begin 
			cache[i]:='_';
		end;
	end;
end;

procedure essai (mot,cache:String; var gagne : boolean );
var yes : Char; tab : array[1..1000] of Char; i,e : Integer; K : TkeyEvent;
begin
e:=0;
gagne:= false;
tab[1]:='1';
InitKeyBoard;
	repeat		
		if mot = cache then 
		begin 
			gagne:= true;
			break;
		end;
		TextBackground(15);
		TextColor(4);
		SetConsoleWindowSize;
		ClrScr;
		writeln ( cache );
		writeln( 'Votre nombre d''essai est : ', e,'/', length(mot) );
		writeln;
		if tab[1]<>'1' then
		begin
		write('Vous avez saisi les lettres suivantes : ');
		for i:=1 to e do
		begin
			if tab[i]<>'' then 
			begin 
			write(tab[i],' ');
			end;
		end;
		end
		else
		begin		
		write('t''as rien rentr',#233);
		end;
		
		kiki.TestKey(K,yes);		
		if yes<>'r' then 
			begin 
				e:=e+1;
				tab[e]:=yes; 				
				for i:=1 to length(mot) do 
				begin
					if yes=mot[i] then 
					begin 
						cache[i]:=yes;						
					end;		  
				end;
			end;
		
	until e=length(mot) ;
	if mot = cache then 
	begin 
		gagne:= true;
	end;
		
DoneKeyBoard;

end;

end.
			
 

