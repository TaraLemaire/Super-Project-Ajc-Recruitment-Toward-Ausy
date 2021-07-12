import RPi.GPIO as GPIO

def setModeBoard():
        GPIO.setmode(GPIO.BOARD)

def setPinOut(pin):
        GPIO.setup(pin, GPIO.OUT)

def setOutput(pin, val):
        GPIO.output(pin, val)

def afficher(var):
        print(var)

def saisi(var):
        return var

