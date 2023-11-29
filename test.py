import mysql.connector

mydb = mysql.connector.connect(
	host="mysql1",
	user="root",
	passwd="password",
	auth_plugin="mysql_native_password"
)

testcursor = mydb.cursor()
testcursor.execute("CREATE DATABASE sample")
testcursor.execute("USE sample") 
testcursor.execute("CREATE TABLE USER(first_name VARCHAR(30), last_name VARCHAR(30), email VARCHAR(30), username VARCHAR(20), password VARCHAR(20),regdate DATE)")
testcursor.execute("SHOW TABLES")

for x in testcursor:
  print(x) 
