USE ExampleDatabase;

CREATE TABLE DecimalNumbers
(
	spalte1 DECIMAL(5, 2),
	spalte2 DECIMAL(10, 5),
);

INSERT INTO DecimalNumbers VALUES (3, 50000);

SELECT * FROM DecimalNumbers