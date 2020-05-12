program example1;

{ This program demonstrates the GetKeyEvent function }

uses keyboard;

Var
  K : TKeyEvent;
  i :Integer;
  
begin
  InitKeyBoard;
  Writeln('Press keys, press "q" to end.');
  Repeat
    K:=GetKeyEvent;
    K:=TranslateKeyEvent(K);
    { Write('Got key event with '); }
	{ if kbASCII = GetKeyEventFlags(K) then }
	{ begin }
		{ writeln('Nique'); }
		{ for i:=1 to length(KeyEventToString(K)) do  }
			{ begin }
				{ if KeyEventToString(K)[i] in ['a'..'z'] then }
				{ begin }
					{ writeln(upcase(GetKeyEventChar(K))); }
				{ end }
				{ else if KeyEventToString(K)[i] in ['A'..'Z'] then }
				{ begin }
					{ writeln(GetKeyEventChar(K)); }
				{ end; }
		{ end; }
		
	{ end; }
	
    Case GetKeyEventFlags(K) of
      kbASCII    : Writeln('ASCII key');
      kbUniCode  : Writeln('Unicode key');
      kbFnKey    : Writeln('Function key');
      kbPhys     : Writeln('Physical key');
      kbReleased : Writeln('Released key event');
    end;
    Writeln('Got key : ',KeyEventToString(K));
  Until (GetKeyEventChar(K)='q');
  DoneKeyBoard;
end.