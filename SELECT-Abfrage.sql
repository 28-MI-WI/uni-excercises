USE ExampleDatabase;
--- Entweder kann man sagen das nur bestimmte Attributen ausgegeben werden sollen ODER
--- man kann auch sagen das alle Attributen ausgegeben werden sollen mit einem * zwis.
--- SELECT und FROM
SELECT FirstName, LastName From Employees
--- Mit Where kann eine Bedingung angegeben werden, die ein Datensatz in der abgefragten Datenbank erf�llen muss. 
--- Damit er in die Ergebnissmenge aufgenommen wird.
WHERE FirstName = 'Berg' ---AND / OR; K�nnte man auch noch dazu schreiben.
--- AND wird verwendet wenn zuerst die erste Bedingung erf�llt werden muss (Berg) und anschliessend die zweite Bedingung..
--- OR wird verwendet wenn nur einer von beiden Bedingungen erf�llt werden muss.
--- Andere Vergleichsoperatoren wie z.B <= / >= / =
