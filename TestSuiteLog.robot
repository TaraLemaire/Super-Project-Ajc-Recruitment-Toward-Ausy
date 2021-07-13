*** Settings ***

Library			readFromFile.py	

*** Variables ***

${MoveDet}	Mouvement_detecte
${MoveFin}	Mouvement_termine
${SonDet}	Son_detecte
${SonFin}	Son_termine

*** Test Cases ***

TestCase1 Deroulement Normal
        Log To Console		Vérification des logs en fonctionnement normal     
	${line}=		readFromFile		${0}
	Should Contain		${line}			${MoveDet}

        ${line}=                readFromFile            ${1}
        Should Contain          ${line}                 ${MoveFin}

        ${line}=                readFromFile            ${2}
        Should Contain          ${line}                 ${SonDet}

        ${line}=                readFromFile            ${3}
        Should Contain          ${line}                 ${SonFin}

TestCase2 Detection Imbriquée
	Log To Console		Vérification des logs en fonctionnement imbriqué
        ${line}=                readFromFile            ${4}
        Should Contain          ${line}                 ${SonDet}

        ${line}=                readFromFile            ${5}
        Should Contain          ${line}                 ${MoveDet}

        ${line}=                readFromFile            ${6}
        Should Contain          ${line}                 ${SonFin}

        ${line}=                readFromFile            ${7}
        Should Contain          ${line}                 ${MoveFin}



