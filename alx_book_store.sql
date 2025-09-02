import mysql.connector
/*connecting to database using the mysql.connector library*/
mydb_connection = mysql.connector.connect(
	host='127.0.0.1',
	user='root',
	password='@Wanjiru1',
	database='alx_book_store'
	)
/*initializing cursor method to execute querries*/
my_cursor = mydb_connection.cursor()
my_cursor.execute("""
	CREATE TABLE Authors (
		author_id INT PRIMARY KEY,
		author_name VARCHAR(215) NOT NULL
	)
""")
my_cursor.execute("""
	CREATE TABLE Books (
		book_id INT PRIMARY KEY,
		author_id INT,
		price DOUBLE,
		publication_date DATE,
		FOREIGN KEY (author_id)
		REFERENCING Authors(author_id)
	)
""")
my_cursor.execute("""
	CREATE TABLE Customers (
		customer_id INT PRIMARY KEY,
		customer_name VARCHAR(215) NOT NULL,
		email VARCHAR(215),
		address TEXT
	) 
""")
my_cursor.execute("""
	CREATE TABLE Orders (
		order_id INT PRIMARY KEY, 
		customer_id INT,
		order_date DATE,
		FOREIGN KEY (customer_id)
		REFERENCING Customers(customer_id)
	)
""")
my_cursor.execute("""
	CREATE TABLE Order_Details (
		orderdetailid INT PRIMARY KEY,
		order_id INT,
		book_id INT,
		quantity DOUBLE,
		FOREIGN KEY (order_id) REFERENCING Orders(order_id),
		FOREIGN KEY (book_id) REFERENCING Books(book_id)
	)
""")

/*close the cursor and connection*/
my_cursor.close()
mydb_connection.close()
