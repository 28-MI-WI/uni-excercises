USE ExampleDatabase;
--- Mann kann nicht die gleiche Datenbank verwenden in der man aktualisierungen verwendet!
--- Von der 'master' Datenbank aus kann man andere Datenbanken bearbeiten.
--- Tabelle wird gelöscht mit DROP TABLE
--- Mit IF EXISTS wird überprüft ob die Tabelle, die zu löschen ist existiert.
--- Datenbank wird gelöscht mit DROP DATABASE
DROP DATABASE ExampleDatabase2;

