USE ExampleDatabase;
--- SELECT * FROM, Funktion w�hle alle Elemente aus der Employees Tabelle aus.
SELECT * FROM Employees;
--- UPDATE meint, die genannte Tabelle soll bearbeitet / aktualisiert werden.
UPDATE Employees
SET LastName = 'M�ller'
--- Ohne die Where Klausel wird der 'SET' Befehl auf allen 'LastNames' verwendet!
--- mit der Where Klausel wird eine bestimmte Zelle editiert.
Where Employees_ID = 1;