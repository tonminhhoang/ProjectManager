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
data = read_file.readline().strip('\n').split(" ")
read_file.close()

# print(data)

# for i in range(0,num_of_user):
# 	if data[0] == get_user_value[i]:
# 		print("yes!")
# 		break
# 	elif i == num_of_user-1:
# 		print(i)
# 		print("no")

result = open("data.txt", "w")
for check_user in range(0, num_of_user):
	if data[0] == get_user_value[check_user]:
		result.write("Username already exist!")
		break
	elif check_user == (num_of_user-1):
		result.write("Success!")
		worksheet.update_cell(num_of_user+2, 1, data[0])
		worksheet.update_cell(num_of_user+2, 2, data[1])
		worksheet.update_acell('C2', num_of_user+1)
result.close()