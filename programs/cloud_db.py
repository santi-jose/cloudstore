from scrape_makinex import products_df
from sql2py import create_server_connection
from sql2py import create_database
from sql2py import create_db_connection
from sql2py import execute_query
from sql2py import read_query
from sql2py import execute_list_query

#create the dataframe
df = products_df()

