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

data = open("data.txt", "r+")
username = data.readline()
password = data.readline()
data.truncate(0)
data.close()

worksheet.update_cell(num_of_user+2, 1, username)
worksheet.update_cell(num_of_user+2, 2, password)

worksheet.update_acell('C2', num_of_user+1)
