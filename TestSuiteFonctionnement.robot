*** Settings ***
Library         GPIOLibProjet.py
Library		sendToSerial.py
Library		openCloseProjet.py

Suite Setup		Start Test
Suite Teardown		Terminate Test

*** Variables ***

${GPIO_PIN}	${38}

*** Test Cases ***

TestCase1 Deroulement Normal
        Log To Console		Mouvement Seul           
        setOutput       	${GPIO_PIN}	${0}	#Mouvement detecte
	Sleep			1s
	${result}=		readPin		${GPIO_PIN}
	Should Be Equal		${result}	${0}
	Sleep			9s
	setOutput		${GPIO_PIN}	${1}	#Mouvement termine 10s
	Sleep			1s		#Laisse du temps pour envoyer au Log
	${result}=		readPin		${GPIO_PIN}
	Should Be Equal		${result}	${1}
	Sleep			2s		#Laisse du temps pour envoyer au Log

	Log To Console		Son Seul	
	sendToSerial		S		#Son detecte	
	Sleep			10s
	sendToSerial		T		#Son termine 10s	
	Sleep			3s		#Laisse du temps pour le prochain test


TestCase2 Detection Imbrique
	Log To Console		Son Debut
	sendToSerial		S		#Son detecte
	Sleep			5s

	Log To Console		Mouvement Debut
	setOutput		${GPIO_PIN}	${0}	#Mouvement detecte
	Sleep			1s
	${result}=              readPin         ${GPIO_PIN}
        Should Be Equal         ${result}       ${0}
	Sleep			4s

	Log To Console		Son Fin
	sendToSerial		T		#Son termine 10s
	Sleep			5s

	Log To Console		Mouvement Fin
	setOutput		${GPIO_PIN}	${1}	#Mouvement termine 10s
	Sleep			1s
	${result}=              readPin         ${GPIO_PIN}
        Should Be Equal         ${result}       ${1}
	Sleep			2s


*** Keywords ***
Start Test
	setModeBoard
	setPinOut	${GPIO_PIN}

Terminate Test
	sendToSerial		Q		#Termine le programme
	closeProjet
