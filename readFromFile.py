def readFromFile(lineNb, msg):
	file = open("test.file", "r")
	for i, line in enumerate(file):
		if i == lineNb:
			assertIn(file.readline(), msg)
