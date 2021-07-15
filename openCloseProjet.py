import os

def openProjet():
	os.system('./projet & > test.file')

def closeProjet():
	os.system('echo ALLO')
	os.system('echo $(ps -e | grep projet | cut -d" " -f1)')
	os.system('sudo kill -SIGINT $(ps -a | grep projet | cut -d" " -f1)')
	os.system('echo $(ps -e | grep projet | cut -d" " -f1)')



