from scrape_makinex import makinex_products_df
from scrape_victory import victory_products_df
from scrape_toolots import toolots_products_df
from scrape_titanMachinery import titanmachinery_products_df
from sql2py import create_server_connection
from sql2py import create_database
from sql2py import create_db_connection
from sql2py import execute_query
from sql2py import read_query
from sql2py import execute_list_query


#establish connection to mySQL server
connection = create_server_connection("localhost", "root", "sqlV0idprogr@m")

#create database
create_database_query = "CREATE DATABASE cloudstore"
# create_database(connection, create_database_query)

#connect to cloudstore database
connection = create_db_connection("localhost", "root", "sqlV0idprogr@m", "cloudstore")

#assign SQL query command to create tables
create_products_table = """
CREATE TABLE PRODUCTS (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price VARCHAR(20),
    manufacturer VARCHAR(100),
    category VARCHAR(100),
    more_info VARCHAR(200) NOT NULL,
    img_link VARCHAR(200) NOT NULL,
    timestamp VARCHAR(50) NOT NULL
);
"""

execute_query(connection, create_products_table)

sql = """
    INSERT INTO PRODUCTS (product_id, product_name, price, manufacturer, category, more_info, img_link, timestamp)
    VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
"""

val = []

i = 1

# CREATE MAKINEX TABLE IN CLOUDSTORE DATABASE
#create the dataframe
makinex_df = makinex_products_df()
makinex_df.replace({r'[^\x00-\x7F]+':''}, regex=True, inplace=True)

for index, row in makinex_df.iterrows():
     val.append([str(i), row['Product Name'], row['Price'], row['Manufacturer'], row['Category'], row['More Info'], row['Image Link'], row['Time']])
     i = i + 1

# CREATE VICTORY TABLE IN CLOUDSTORE DATABASE
# Make dataframe from victory products webpage
victory_df = victory_products_df()
victory_df.replace({r'[^\x00-\x7F]+':''}, regex=True, inplace=True)

for index, row in victory_df.iterrows():
     val.append([str(i), row['Product Name'], row['Price'], row['Manufacturer'], row['Category'], row['More Info'], row['Image Link'], row['Time']])
     i = i + 1

# CREATE TOOLOTS TABLE IN CLOUDSTORE DATABASE
# make dataframe from toolots product webpage
toolots_df = toolots_products_df()
toolots_df.replace({r'[^\x00-\x7F]+':''}, regex=True, inplace=True)

for index, row in toolots_df.iterrows():
     val.append([str(i), row['Product Name'], row['Price'], row['Manufacturer'], row['Category'], row['More Info'], row['Image Link'], row['Time']])
     i = i + 1

# CREATE TITAN MACHINARY TABLE IN CLOUDSTORE DATABASE
# make dataframe from toolots product webpage
titan_df = titanmachinery_products_df()
titan_df.replace({r'[^\x00-\x7F]+':''}, regex=True, inplace=True)

for index, row in titan_df.iterrows():
    val.append([str(i), row['Product Name'], row['Price'], row['Manufacturer'], row['Category'], row['More Info'], row['Image Link'], row['Time']])
    i = i + 1

execute_list_query(connection, sql, val)
