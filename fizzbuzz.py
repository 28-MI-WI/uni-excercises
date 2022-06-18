def fizzbuzz(input):
    dreiTeilbar = 'fizz'
    fünfTeilbar = 'buzz'
    fünfzehnTeilbar = 'fizzbuzz'

    print("------------------------")
    for i in range(0, input+1):
        if i == 0:
            print(str(i))
            continue
        if i % 15 == 0:
            print(fünfzehnTeilbar)
        elif i % 3 == 0:
            print(dreiTeilbar) 
        elif i % 5 == 0:
            print(fünfTeilbar)
        else:
            print(str(i))

done = False
while done == False:
    try:
        n = int(input('Bitte geben sie eine ganze Zahl ein. \n'))
        done = True
    except ValueError:
        pass

fizzbuzz(n)

