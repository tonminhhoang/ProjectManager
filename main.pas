program Project_Manager;

(*INCLUDE UNITS, LIBRARIES*)
uses 
	crt, Dos;

(*CONST*)

(*TYPE*)

(*VAR*)
var
	(*for main loop*)
	running : boolean = true;
	test_case : integer;
	
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

procedure new_Project();
begin 
	Writeln('hooray!:))');
	readln();
end;

procedure open_Project();
begin
	Writeln('opended project');
	readln();
end;

procedure help();
begin
	Writeln('help page!');
	readln();
end;

procedure LogIn();
begin
	Writeln('                   ||                ');
	Writeln('                  _||_               ');
	Writeln('                  \  /               ');
	Writeln('                   \/                ');
	Writeln(' _     _______  _______    _  __   _ ');
	Writeln('| |   |  ___  ||  _____|  | ||  \ | |');
	Writeln('| |   | |   | || |  _____ | || \ \| |');
	Writeln('| |   | |   | || | |_   _|| || |\   |');
	Writeln('| |__ | |___| || |___| |  | || | \  |');
	Writeln('|____||_______||_______|  |_||_|  |_|');
	Writeln('                              _______  _______ ');
	Writeln('                             |  ___  ||  ___  |');
	Writeln('                             | |   | || |___| |');
	Writeln('                             | |   | ||  __  _|');	
	Writeln('                             | |___| || |  \ \ ');
	Writeln('                             |_______||_|   \_\');
	Writeln('                                       _____  _  _______    __   _   _    _  _______ ');
	Writeln('                                      |  ___|| ||  _____|  |  \ | | | |  | ||  ___  |');
	Writeln('                                      | |___ | || |  _____ | \ \| | | |  | || |___| |');
	Writeln('                                      |___  || || | |_   _|| |\   | | |  | ||  _____|');
	Writeln('                                       ___| || || |___| |  | | \  | | |__| || |      ');
	Writeln('                                      |_____||_||_______|  |_|  |_| |______||_|      ');
end;
	
procedure SignUp();
begin
	Writeln(' _     _______  _______    _  __   _ ');
	Writeln('| |   |  ___  ||  _____|  | ||  \ | |');
	Writeln('| |   | |   | || |  _____ | || \ \| |');
	Writeln('| |   | |   | || | |_   _|| || |\   |');
	Writeln('| |__ | |___| || |___| |  | || | \  |');
	Writeln('|____||_______||_______|  |_||_|  |_|');
	Writeln('                              _______  _______                                       ');
	Writeln('                             |  ___  ||  ___  |                                      ');
	Writeln('                             | |   | || |___| |               ||                     ');
	Writeln('                             | |   | ||  __  _|              _||_                    ');	
	Writeln('                             | |___| || |  \ \               \  /                    ');
	Writeln('                             |_______||_|   \_\               \/                     ');                           
	Writeln('                                       _____  _  _______    __   _   _    _  _______ ');
	Writeln('                                      |  ___|| ||  _____|  |  \ | | | |  | ||  ___  |');
	Writeln('                                      | |___ | || |  _____ | \ \| | | |  | || |___| |');
	Writeln('                                      |___  || || | |_   _|| |\   | | |  | ||  _____|');
	Writeln('                                       ___| || || |___| |  | | \  | | |__| || |      ');
	Writeln('                                      |_____||_||_______|  |_|  |_| |______||_|      ');
end;

function Login_Signup_Sys() : integer;
var
	ch : char;
	ch2 : char;
	flag : boolean = false;
begin
	Login();
	Writeln('Use left - right arrow keys to navigate!');
	Writeln('Please press "C" to confirm!');
	repeat
    	ch:=ReadKey;
    	case ch of
     		#0 : begin
            	ch:=ReadKey; {Read ScanCode}
            	case ch of
					{Log In Page}
             		#75 : 
						begin
							clrscr;
							LogIn();
							Writeln('Use left - right arrow keys to navigate!');
							Writeln('Please press "C" to confirm!');
							ch2 := ReadKey;
							case ch2 of
								{check if confirm}
								#67, #99: 
									begin
										Login_Signup_Sys := 1;
										flag := true;
									end;
							end;
						end;
					{Sign Up page}
             		#77 : 
						begin
							clrscr;
							SignUp();
							Writeln('Use left - right arrow keys to navigate!');
							Writeln('Please press "C" to confirm!');
							ch2 := ReadKey;
							{Check if confirm}
							case ch2 of
								#67, #99: 
									begin
										Login_Signup_Sys := 2;
										flag := true;
									end;
							end;
						end;
            	end;
          	end;
    	end;
  	until flag = true
end;

function SignUp_Process() : boolean;
var
	file_handling : text;
	Username, Password, Result_data, existed : string;
begin
	clrscr;
	
	{initialize variables}
	existed := 'Username already exist!';

	{UI}
	Writeln(' _____  _  _______    __   _   _    _  _______ ');
	Writeln('|  ___|| ||  _____|  |  \ | | | |  | ||  ___  |');
	Writeln('| |___ | || |  _____ | \ \| | | |  | || |___| |');
	Writeln('|___  || || | |_   _|| |\   | | |  | ||  _____|');
	Writeln(' ___| || || |___| |  | | \  | | |__| || |      ');
	Writeln('|_____||_||_______|  |_|  |_| |______||_|      ');
	Writeln();
	Write('Username: '); Readln(Username);
	Write('Password: '); Readln(Password);
	Result_data := Username + ' ' + Password;

	{file handling - Write username & password to data file}
	assign(file_handling, 'data.txt');
	rewrite(file_handling);
	System.Writeln(file_handling, Result_data);
	System.close(file_handling);

	{Execute Sign Up procedure}
	SwapVectors;
	Exec('signup.exe','');
	SwapVectors;

	Result_data := '';

	{file handling - Read the result from data file}
	assign(file_handling, 'data.txt');
	reset(file_handling);
	System.Read(file_handling, Result_data);
	System.close(file_handling);

	if Result_data = existed then SignUp_Process := false
	else SignUp_Process := true;

	Writeln(Result_data);
end;

(*MAIN*)
BEGIN
	while running = true do
		begin
			Writeln('Enter test case: ');
			Readln(test_case);
			case test_case of 
				1:
				begin
					case Login_Signup_Sys() of
						1: Writeln('Login success!');
						2: 
						begin
							case SignUp_Process() of
								true: Writeln('Have access to main page!');
								false: Writeln('Signup failed!');
							end;
						end;
					end;
				end;
				2:
				begin
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
			end;
		end;
END.
