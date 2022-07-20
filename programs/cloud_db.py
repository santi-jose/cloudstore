from scrape_makinex import makinex_products_df
from scrape_victory import victory_products_df
from scrape_toolots import toolots_products_df
from sql2py import create_server_connection
from sql2py import create_database
from sql2py import create_db_connection
from sql2py import execute_query
from sql2py import read_query
from sql2py import execute_list_query


#establish connection to mySQL server
connection = create_server_connection("localhost", "root", "sqlV0idprogr@m")

#create database
# create_database_query = "CREATE DATABASE cloudstore"
# create_database(connection, create_database_query)

#connect to cloudstore database
connection = create_db_connection("localhost", "root", "sqlV0idprogr@m", "cloudstore")

# CREATE MAKINEX TABLE IN CLOUDSTORE DATABASE
#create the dataframe
# df = makinex_products_df()

#assign SQL query command to create tables
create_makinex_table = """
CREATE TABLE MAKINEX (
    product_name VARCHAR(50) NOT NULL,
    price VARCHAR(20),
    manufacturer VARCHAR(50),
    category VARCHAR(50),
    more_info VARCHAR(100) NOT NULL,
    img_link VARCHAR(100) NOT NULL,
    timestamp VARCHAR(50)
);
"""

# execute_query(connection, create_makinex_table)

sql = """
    INSERT INTO MAKINEX (product_name, price, manufacturer, category, more_info, img_link, timestamp)
    VALUES (%s, %s, %s, %s, %s, %s, %s)
"""

val = []

# for index, row in df.iterrows():
#     val.append([row['Product Name'], row['Price'], row['Manufacturer'], row['Category'], row['More Info'], row['Image Link'], row['Time']])

# execute_list_query(connection, sql, val)

# CREATE VICTORY TABLE IN CLOUDSTORE DATABASE
# Make dataframe from victory products webpage
# victory_df = victory_products_df()

# victory product table
create_victory_table = """
CREATE TABLE VICTORY (
    product_name VARCHAR(100) NOT NULL,
    price VARCHAR(20),
    manufacturer VARCHAR(50),
    category VARCHAR(100),
    more_info VARCHAR(200) NOT NULL,
    img_link VARCHAR(200) NOT NULL,
    timestamp VARCHAR(50)
);
"""

# execute_query(connection, create_victory_table)

sql = """
    INSERT INTO VICTORY (product_name, price, manufacturer, category, more_info, img_link, timestamp)
    VALUES (%s, %s, %s, %s, %s, %s, %s)
"""

victory_val = []

# for index, row in victory_df.iterrows():
#     victory_val.append([row['Product Name'], row['Price'], row['Manufacturer'], row['Category'], row['More Info'], row['Image Link'], row['Time']])

# execute_list_query(connection, sql, victory_val)

# CREATE TOOLOTS TABLE IN CLOUDSTORE DATABASE
# make dataframe from toolots product webpage
toolots_df = toolots_products_df()

# toolots product table
create_toolots_table = """
CREATE TABLE TOOLOTS (
    product_name VARCHAR(150) NOT NULL,
    price VARCHAR(20),
    manufacturer VARCHAR(50),
    category VARCHAR(100),
    more_info VARCHAR(200) NOT NULL,
    img_link VARCHAR(200) NOT NULL,
    timestamp VARCHAR(50)
);
"""

execute_query(connection, create_toolots_table)

sql = """
    INSERT INTO TOOLOTS (product_name, price, manufacturer, category, more_info, img_link, timestamp)
    VALUES (%s, %s, %s, %s, %s, %s, %s)
"""

toolots_val = []

for index, row in toolots_df.iterrows():
    toolots_val.append([row['Product Name'], row['Price'], row['Manufacturer'], row['Category'], row['More Info'], row['Image Link'], row['Time']])

execute_list_query(connection, sql, toolots_val)
