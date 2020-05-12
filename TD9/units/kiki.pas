unit kiki;

interface 
uses Keyboard, Crt;

	procedure TestKey(K:TKeyEvent;var G:Char);
	

	
implementation 


procedure TestKey(K:TKeyEvent;var G:Char);
var i: Integer;

begin
	G:='r';
	K:=GetKeyEvent;
	K:=TranslateKeyEvent(K);
	if kbASCII = GetKeyEventFlags(K) then
	begin
		for i:=1 to length(KeyEventToString(K)) do 
			begin
				if KeyEventToString(K)[i] in ['a'..'z'] then
				begin
					G:=upcase(GetKeyEventChar(K));
				end
				else if KeyEventToString(K)[i] in ['A'..'Z'] then
				begin
					G:=GetKeyEventChar(K);
				end;
		end;
		
	end;
	
end;
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	end.