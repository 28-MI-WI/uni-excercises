person1 = ("Hanno", 42, 43)
person2 = ("Ben", 16, 39)
person3 = ("Hanna", 18, 37)

personen = [person1, person2, person3]

for person in personen:
	print("Prozent-Operator: %s ist %d Jahre alt und hat die Schuehgroesse %d" % ( person[0], person[1], person[2] ) )
	print('Str.format(): {} ist {} Jahre alt und hat die Schuehgroesse {}'.format(person[0], person[1], person[2]))
	print(F"f-String: {person[0]} ist {person[1]} Jahre alt und hat die Schuehgroesse {person[2]}")
	print("=====================================")