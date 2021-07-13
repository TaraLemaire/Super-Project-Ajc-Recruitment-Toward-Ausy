def readFromFile(lineNb):
	with open("../test.file", "r") as file:
		for i, line in enumerate(file):
			if i == lineNb:
				return line	
