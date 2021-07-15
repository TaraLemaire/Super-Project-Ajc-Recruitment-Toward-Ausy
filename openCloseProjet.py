import os

def openProjet():
	os.system('./projet & > test.file')

def closeProjet():
	exit_code = os.system('sudo kill -9 $(ps -e | grep projet | cut -d" " -f1)')
	if exit_code == 0:
		print("Process killed successfully")
	else:
		print("exit code : " + exit_code ) 
		print("Process could not be killed")

