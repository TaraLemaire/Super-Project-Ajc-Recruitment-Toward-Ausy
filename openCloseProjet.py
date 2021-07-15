import os

def openProjet():
	os.system('./projet & > test.file')

def closeProjet():
	os.system('sudo kill -9 $(ps -e | grep projet | cut -d" " -f1)')
	os.system('if [ $? -eq 0 ] 
		then 
			echo Process killed successfully
		else 
			echo 'Process could not be killed' 
		fi')


