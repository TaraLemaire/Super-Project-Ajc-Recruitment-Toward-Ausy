def readFromFile(lineNb):
	file = open("test.file", "r")
	for i, line in enumerate(file):
		if i == lineNb:
			return file.readline()	
