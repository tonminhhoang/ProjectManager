program Test;

uses crt;

var i : integer;

begin
	for i := 1 to 30 do 
		begin
			if i < 30 then
				Writeln(i);
			if i = 30 then
				Write(i);
		end;
	Delay(10000);
end.
