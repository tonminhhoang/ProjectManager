program Project_Manager;

(*INCLUDE UNITS, LIBRARIES*)
uses crt;

(*CONST*)

(*TYPE*)

(*VAR*)

(*PROCEDURE & FUNCTION*)
procedure draw_PJ_name();
begin
	(*Name of project*)
	Writeln('*************************************************************************************');
	Writeln('*  __   __   __  ___  __  __ ___     .  .   .   .  .   .   .  .   .    __   __  __  *');
	Writeln('* |__| |__| |  |  |  |__ |    |      |\/|  /_\  |\ |  /_\  |\ |  /_\  |  _ |__ |__| *');
	Writeln('* |    |  \ |__| _|  |__ |__  |      |  | /   \ | \| /   \ | \| /   \ |__; |__ |  \ *');
	Writeln('*                                                                                   *');
	Writeln('*                             (DEVELOPED BY KONST TEAM)                             *');
	Writeln('*************************************************************************************');
end;

function Welcome_Page() : char;
var
	user_selection : char;
begin
	clrscr;
	draw_PJ_name();
	Writeln('                                        MENU:                                        ');
	Writeln('                                   1) New PROJECT                                    ');
	Writeln('                              2) Open existing PROJECT                               ');
	Writeln('                                       3) Help                                       ');
	Writeln('i) ABOUT KONST TEAM');
	Write('Selection: ');
	Read(user_selection);
	Welcome_Page := user_selection;
end;

procedure team_information();
var
	user_input : String = '';
begin
	clrscr;
	Writeln('<- Back');
	Writeln('                                ********************                                 ');
	Writeln('                                * About KONST TEAM *                                 ');
	Writeln('                                ********************                                 ');
	Writeln('Konst team was established in July 2022 with the purpose of creating software program');
	Writeln('-s that provide customers a better solution in managing teams and so on. Originally, ');
	Writeln('Konst team was found by Ton Minh Hoang with 2 co-founders Lam Han Dat and Cao Doan An');
	Writeln('-h Khoa, we are highschool students from Viet Nam');
	Writeln();
	Writeln('From the developers:');
	Writeln('Ton Minh Hoang');
	Writeln('Founder, developer');
	Writeln('"I am glad you used Konst Team`s product, hope you have great time using Project Manage');
	Writeln('-r as much as how I developed the program."');
	Writeln();
	Writeln('Lam Han Dat');
	Writeln('Co-founder, developer');
	Writeln('"<viet cam nghi vao day>"');
	Writeln();
	Writeln('Cao Doan Anh Khoa');
	Writeln('Co-founder, developer');
	Writeln('"Welcome dear users to project_manager, hope you will have a great experience with this application"');
	Read(user_input);
	user_input := LowerCase(user_input);
	if user_input <> '' then
		Write('success');
end;

(*MAIN*)
BEGIN
	Welcome_Page();
	if Welcome_Page() <> '' then
		begin
			case Welcome_Page() of
				{
				'1' : new_Project();
				'2' : open_Project();
				'3' : help();
				}
				'i' : team_information();
			end;
		end;
END.
