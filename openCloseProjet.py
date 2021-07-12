import os

def openProjet():
	os.system('./projet & > test.file')

def closeProjet():
	os.system('echo $(ps -a | grep projet | cut -d" " -f2)')
	os.system('sudo kill -int $(ps -a | grep projet | cut -d" " -f2)')
	os.system('echo $(ps -a | grep projet | cut -d" " -f2)')


