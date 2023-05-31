USE ExampleDatabase;

CREATE TABLE TextDatatype
(
	spalte1 CHAR(10),
	spalte2 NCHAR(10),
	spalte3 VARCHAR(10),
	spalte4 NVARCHAR(10)
);

INSERT INTO TextDatatype
VALUES ('Hallo', 'Welt', 'Hallo', 'Welt');