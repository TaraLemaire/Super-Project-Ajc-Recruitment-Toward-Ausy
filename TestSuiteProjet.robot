*** Settings ***
Library         GPIOLibProjet.py
Library		sendToSerial.py
Library		openCloseProjet.py
Library		Process.py

Suite Setup		Start Test
Suite Teardown		Terminate Test

*** Variables ***

${GPIO_PIN}	${38}

*** Test Cases ***

TestCase1 Deroulement Normal
        Log To Console		Mouvement Seul           
        setOutput       	${GPIO_PIN}	${0}	#Mouvement detecte
	Sleep			10s
	setOutput		${GPIO_PIN}	${1}	#Mouvement termine 10s
	Sleep			3s		#Laisse du temps pour envoyer au Log

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
	Sleep			5s

	Log To Console		Son Fin
	sendToSerial		T		#Son termine 10s
	Sleep			5s

	Log To Console		Mouvement Fin
	setOutput		${GPIO_PIN}	${1}	#Mouvement termine 10s
	Sleep			3s


*** Keywords ***
Start Test
	Start Process		projet	
	Sleep 			1s
	setModeBoard
	setPinOut	${GPIO_PIN}

Terminate Test
	Terminate Process	projet
	Sleep			1s
