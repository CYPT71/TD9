Unit initialisation;

interface
Const MAX = 1000;
procedure motHasard(var mot : String);


implementation

procedure motHasard(var mot : String);
var t: Text;
	dictionnaire : Array[1..MAX] of String;
	indiceHasard, nb : Integer;
begin

	randomize();

	nb := 0;
	assign (t, 'mots.txt');
	reset(t);
	
	while not eof(t) do
	begin
		nb := nb + 1;
		readln(t, dictionnaire[nb]);
	end;
	
	indiceHasard := 1 + random(nb);
	
	mot := dictionnaire[indiceHasard];

end;

end.
