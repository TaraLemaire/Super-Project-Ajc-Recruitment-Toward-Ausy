import os

def openProjet():
	os.system('./projet & > test.file')

def closeProjet():
	exit_code = os.system('sudo kill -9 $(ps -e | grep projet | cut -d" " -f1)')
	if exit_code == 0:
		os.system('echo Process killed successfully')
	else:
		os.system('echo Process could not be killed')

