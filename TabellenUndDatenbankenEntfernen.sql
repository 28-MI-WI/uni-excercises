USE ExampleDatabase;
--- Mann kann nicht die gleiche Datenbank verwenden in der man aktualisierungen verwendet!
--- Von der 'master' Datenbank aus kann man andere Datenbanken bearbeiten.
--- Tabelle wird gel�scht mit DROP TABLE
--- Mit IF EXISTS wird �berpr�ft ob die Tabelle, die zu l�schen ist existiert.
--- Datenbank wird gel�scht mit DROP DATABASE
DROP DATABASE ExampleDatabase2;

