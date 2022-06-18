class Rechner:
    def addieren(self, summand1, summand2):
        return summand1 + summand2
    def subtrahieren(self, minuend, subtrahend):
        return minuend - subtrahend
    def multiplizieren(self, faktor1, faktor2):
        return faktor1 * faktor2
    def dividieren(self, dividend, divisor):
        if divisor == 0.0:
            return "Division durch null ist verboten!"
        return dividend/divisor


def menue():
    ungueltigeEingabe = False
    entscheidung = 0
    rechner = Rechner()
    
    print("1 Addieren")
    print("2 Subtrahieren")
    print("3 Multiplizieren")
    print("4 Dividieren")
    print("5 Beenden")
        
    try:
        entscheidung = int(input("Auswahl eingeben: "))
    except ValueError:
        print("Oops!  That was no valid number.  Try again...")
        print("\n")
        menue()

    if entscheidung in range(1, 6):
        if entscheidung == 5:
            print("Applikation wird beendet.")
            exit()
        ungueltigeEingabe = False   
    else:
        print("Die Auswahl ist ungueltig")
        print("Bitte geben Sie eine gueltige Zahl ein!")
        ungueltigeEingabe = True
        print("\n")

    while ungueltigeEingabe == True:
        menue()
        print("\n")
    
    num1 = float(input("Auswahl 1: "))
    num2 = float(input("Auswahl 2: "))

    if entscheidung == 1:
        print(rechner.addieren(num1, num2))
    elif entscheidung == 2:
        print(rechner.subtrahieren(num1, num2))
    elif entscheidung == 3:
        print(rechner.multiplizieren(num1, num2))
    elif entscheidung == 4:
        print(rechner.dividieren(num1, num2))

    print("\n")
    
    menue()


menue()
    
