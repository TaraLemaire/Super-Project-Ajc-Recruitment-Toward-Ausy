import os

def openProjet():
	os.system('./projet & > test.file')

def closeProjet():
	os.system('sudo kill -SIGINT $(ps -a | grep projet | cut -d" " -f1)')


