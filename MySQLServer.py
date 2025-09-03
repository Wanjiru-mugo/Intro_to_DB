"""this script connects to the database connection, creates the database if 
    it doesnt exist and prints a confirmation message
"""
import mysql.connector
try:
    database_connection = mysql.connector.connect(
        host='127.0.0.1',
        user='root',
        password='@Wanjiru1',
        database='alx_book_store'
        )
    my_cursor = database_connection.cursor()
    my_cursor.execute(
            "CREATE DATABASE IF NOT EXISTS alx_book_store"
            )
    print(f"Database 'alx_book_store' created successfully!")

except mysql.connector.Error as err:
    print(f"Error: {err}")

finally:
    my_cursor.close()
    database_connection.close()
