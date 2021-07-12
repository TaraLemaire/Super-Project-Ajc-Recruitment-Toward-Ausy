import serial

def sendToSerial(msg):
	ser = serial.Serial('/dev/serial0', 9600, timeout = 1)
	ser.write(str.encode(msg))
