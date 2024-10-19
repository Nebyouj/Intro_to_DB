from getpass import getpass
from mysql.connector import connect, Error

try:
    with connect(
        host="localhost",
        user=input("Enter username: "),
        password=getpass("Enter password: "),
    ) as connection:
        create_db_query = "CREATE DATABASE alx_book_store"
        with connection.cursor() as cursor:
            cursor.execute(create_db_query)
            print("Database 'alx_book_store' created successfully!")
except Error as e:
    print(e)