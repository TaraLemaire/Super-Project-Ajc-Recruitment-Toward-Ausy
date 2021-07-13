def readFromFile(lineNb):
	with open("test.file") as file:
		for i, line in enumerate(file):
			if i == lineNb:
				return line	
