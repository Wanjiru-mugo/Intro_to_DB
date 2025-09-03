"""this script prints the full description of the table Books from the database alx_book_store.
---the script queries the information schema of the server for this particular database and this particular table
"""
SELECT 
	COLUMN_NAME,
	COLUMN_TYPE,
	IS_NULLABLE,
	COLUMN_KEY,
	COLUMN_DEFAULT,
	EXTRA
FROM 
	INFORMATION_SCHEMA.COLUMNS
WHERE 
	TABLE_SCHEMA = 'alx_book_store'
AND
	TABLE_NAME = 'books';

