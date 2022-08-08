program Project_Manager;

(*INCLUDE UNITS, LIBRARIES*)
uses crt;

(*CONST*)

(*TYPE*)

(*VAR*)
var
	(*for main loop*)
	running : boolean = true;
	keyRead : char;
	quitQuest : char;
	quitQuest_Y : char = 'y';
	quitQuest_N : char = 'n';
	
	(*page count*)
	page : integer = 0;

(*PROCEDURE & FUNCTION*)

function Back_Page_Function(user_input : string; BPFpage : integer; flag : boolean) : integer;
var
	back_keyword : string = 'b';
begin
	
	if LowerCase(user_input) = back_keyword then
		begin
			flag := true;
			Back_Page_Function := BPFpage - 1;
		end;
end;

(*WELCOME PAGE*)
function Welcome_Page() : char;
begin
	clrscr;
	Writeln('*************************************************************************************');
	Writeln('*  __   __   __  ___  __  __ ___     .  .   .   .  .   .   .  .   .    __   __  __  *');
	Writeln('* |__| |__| |  |  |  |__ |    |      |\/|  /_\  |\ |  /_\  |\ |  /_\  |  _ |__ |__| *');
	Writeln('* |    |  \ |__| _|  |__ |__  |      |  | /   \ | \| /   \ | \| /   \ |__| |__ |  \ *');
	Writeln('*                                                                                   *');
	Writeln('*                             (DEVELOPED BY KONST TEAM)                             *');
	Writeln('*************************************************************************************');
	Writeln('                                        MENU:                                        ');
	Writeln('                                   1) New PROJECT                                    ');
	Writeln('                              2) Open existing PROJECT                               ');
	Writeln('                                       3) Help                                       ');
	Writeln('i) ABOUT KONST TEAM');
	Write('Selection: ');
	Read(Welcome_Page);
end;

(*TEAM INFORMATION PAGE*)
procedure team_information();
begin
	clrscr;
	Write('<- ');
	TextColor(Red);
	Write('B'); 
	TextColor(white);
	Writeln('ack');
	Writeln('                                ********************                                 ');
	Writeln('                                | About KONST TEAM |                                 ');
	Writeln('                                ********************                                 ');
	Writeln('Konst team was established in July 2022 with the purpose of creating software programs');
	Writeln(' that provide customers a better solution in managing teams and so on. Originally, ');
	Writeln('Konst team was found by Ton Minh Hoang with 2 co-founders Lam Han Dat and Cao Doan Anh');
	Writeln(' Khoa, we are highschool students from Viet Nam');
	Writeln();
	Writeln('From the developers:');
	Writeln('Ton Minh Hoang');
	Writeln('Founder, developer');
	Writeln('"I am glad you used Konst Team`s product, hope you have great time using Project Manager');
	Writeln(' as much as how I developed the program."');
	Writeln();
	Writeln('Lam Han Dat');
	Writeln('Co-founder, developer');
	Writeln('"<viet cam nghi vao day>"');
	Writeln();
	Writeln('Cao Doan Anh Khoa');
	Writeln('Co-founder, developer');
	Writeln('"Welcome dear users to project_manager, hope you will have a great experience with this application"');
	Readln();
end;

(*NEW PROJECT PAGE*)
procedure new_Project();
begin 
	Writeln('hooray!:))');
	readln();
end;

(*OPEN PROJECT*)
procedure open_Project();
begin
	Writeln('opended project');
	readln();
end;

(*HELP PAGE*)
procedure help();
begin
	Writeln('help page!');
	readln();
end;

(*MAIN*)
BEGIN
	while running = true do
		begin
			
			keyRead := ReadKey;

			case keyRead of
				#27: 
					begin
						Writeln();
						Write('Do you want to quit? Y / N: ');
						Readln(quitQuest);
						if LowerCase(quitQuest) = quitQuest_Y then
							running := false;
					end;
			end;

			case Welcome_Page() of
				'1' : 
					begin
						new_Project();
						continue;
					end;
				'2' : 
					begin
						open_Project();
						continue;
					end;
				'3' : 
					begin
						help();
						continue;
					end;
				'i' :
					begin
						team_information();
						continue;
					end;
				else
					Writeln('Please choose options from the list!');
			end;
		end;
END.
