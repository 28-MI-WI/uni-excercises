--- Auf welcher Datenbank soll das Skript verwendet werden..use..
USE ExampleDatabase;
--- Tabelle kreieren mit Attributen (Spalten Namen), Datentypen und anzahl Bits.
CREATE TABLE Employees
(
	Employees_ID INT,
	FirstName VARCHAR(50),
	LastName VARCHAR(50)
);