program td; 

{$mode delphi}{$H+}

uses Windows,SysUtils, Keyboard,Crt,jeu in 'units/jeu.pp', initialisation in 'units/initialisation.pas';



var chips, sortie  : ShortString;  vf : Boolean; i : Integer;  T : LongInt;

procedure JeuEnCours();
begin
initialisation.motHasard(chips);
		ShowWindow(GetConsoleWindow, SW_SHOW);
		ClrScr;
		jeu.afficheMot(chips, sortie );
		jeu.essai(chips, sortie, vf );
		ShowWindow(GetConsoleWindow, SW_HIDE);
		if vf then
			begin 
			ClrScr;
			MessageBox(0,PChar('YEEEEEESSSSSS'+ Chr(13)+'Tu as touv'+#233+' le mot : '+ string(Chips)),PChar('Winner'), 0);
			exit;
			end
		else 
			begin
			writeln(chips);
			MessageBox(0,PChar('AAHAHAH CHEEEH'+ Chr(13) + ' Le mot '+#224+' trouver : '+#233+'tait : '+string(Chips)),PChar('Looser'), 0);

			exit;
			
		end;
		
end;

begin
	ShowWindow(GetConsoleWindow, SW_HIDE);
	i := 1;
	Repeat
		cursoroff;
		JeuEnCours();
		T := MessageBox(0,PChar('Joue encore un peu ?'), PChar('Joue avec Moi'), MB_YESNO+MB_ICONQUESTION);
		if T = 7 
		then
		begin
			i:=0
		end;
	until i <> 1;
	
	
 
 
		
end.
