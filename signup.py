import gspread

from oauth2client.service_account import ServiceAccountCredentials

scopes = [
	'https://www.googleapis.com/auth/spreadsheets',
	'https://www.googleapis.com/auth/drive',
	'https://www.googleapis.com/auth/drive.file',
	'https://spreadsheets.google.com/feeds'
]

creds = ServiceAccountCredentials.from_json_keyfile_name("secretkey.json", scopes)

client = gspread.authorize(creds)
spreadsheet = client.open("Konst - Project Manager")
worksheet = spreadsheet.sheet1
num_of_user = int(worksheet.acell('C2').value)
get_user_value = worksheet.col_values(1)
del get_user_value[0]

read_file = open("data.txt", "r")
data = read_file.readline().split(" ")
read_file.close()

print(get_user_value[0])
print(data)

if data[0] == get_user_value[0]:
	print("yes!")
else:
	print("no")

#data = open("data.txt", "w")
#for check_user in range(0, len(get_user_value)-1):
	#if username == get_user_value[check_user]:
		#print("Username exist! Please choose another name")
		#break
	#elif check_user == len(get_user_value)-1:
		#print("Success!")
		#worksheet.update_cell(num_of_user+2, 1, username)
		#worksheet.update_cell(num_of_user+2, 2, password)
		#worksheet.update_acell('C2', num_of_user+1)
#data.close()
