class Rechner:
	def addieren(self, summand1, summand2):
		return summand1 + summand2
	def subtrahieren(self, minuend, subtrahend):
		return minuend - subtrahend
	def multiplizieren(self, faktor1, faktor2):
		return faktor1 * faktor2
	def dividieren(self, dividend, divisor):
		if divisor == 0.0:
			return "Fehler"	
		return dividend/divisor

def naechste_rechnung():
	print("1 Addieren")
	print("2 Subtrahieren")
	print("3 Multiplizieren")
	print("4 Dividieren")
	print("5 Beenden")

	entscheidung = int(input("Auswahl eingeben: "))

	if entscheidung not in range(1,5):
		print("Blaaaaa")
		return False
    def addieren(self, summand1, summand2):
		return summand1 + summand2
	def subtrahieren(self, minuend, subtrahend):
		return minuend - subtrahend
	def multiplizieren(self, faktor1, faktor2):
		return faktor1 * faktor2
	def dividieren(self, dividend, divisor):
		if divisor == 0.0:
			return "Fehler"	
		return dividend/divisor

def naechste_rechnung():
	print("1 Addieren")
	print("2 Subtrahieren")
	print("3 Multiplizieren")
	print("4 Dividieren")
	print("5 Beenden")

	entscheidung = int(input("Auswahl eingeben: "))

	if entscheidung not in range(1..5):
		print("Die Auswahl ist ungültig")
		return False
	if entscheidung == 5:
		return True

	num1 = float(input("Auswahl 1: "))
	num2 = float(input("Auswahl 2: "))

	rechner = Rechner()

	if entscheidung == 1:
		print(rechner.addieren(num1, num2))
	elif entscheidung == 2:
		print(rechner.subtrahieren(num1, num2))
	elif entscheidung == 3:
		print(rechner.multiplizieren(num1, num2))
	elif entscheidung == 4:
		print(rechner.dividieren(num1, num2))	
	return False

done = False
while done == False:
	done = naechste_rechnung()
	print("\n")


	if entscheidung == 5:
		return True

	num1 = float(input("Auswahl 1: "))
	num2 = float(input("Auswahl 2: "))

	rechner = Rechner()

	if entscheidung == 1:
		print(rechner.addieren(num1, num2))
	elif entscheidung == 2:
		print(rechner.subtrahieren(num1, num2))
	elif entscheidung == 3:
		print(rechner.multiplizieren(num1, num2))
	elif entscheidung == 4:
		print(rechner.dividieren(num1, num2))	
	return False

done = False
while done == False:
	done = naechste_rechnung()
	print("\n")