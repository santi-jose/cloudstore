from sql2py import create_db_connection
from sql2py import  read_query
import pandas as pd

# READ DATA FROM DATABASE AND STORE INTO PANDAS DATAFRAME

# connect to cloudstore database
connection = create_db_connection('localhost', 'root', 'sqlV0idprogr@m', 'cloudstore')

# MAKINEX

# query to read data from makinex table
makinex_query = '''
    SELECT *
    FROM makinex;
'''

# read data from makinex table
makinex_results = read_query(connection, makinex_query)
makinex_lists = []

# store data in makinex table as list of lists
for result in makinex_results:
    result = list(result)
    makinex_lists.append(result)

# create dataframe from list of lists
columns = ['Product Name', 'Price', 'Manufacturer', 'More Info', 'Image Link', 'Category', 'Time']
makinex_df = pd.DataFrame(makinex_lists, columns=columns)
print('Makinex:')
print(makinex_df)
print('')

# TOOLOTS

# query to read data from toolots table
toolots_query = '''
    SELECT * 
    FROM toolots;
'''

# read data from toolots table
toolots_results = read_query(connection, toolots_query)
toolots_lists = []

# store data from toolots table as list of lists
for result in toolots_results:
    result = list(result)
    toolots_lists.append(result)

# create dataframe from list of lists
toolots_df = pd.DataFrame(toolots_lists, columns=columns)
print('Toolots:')
print(toolots_df)
print('')

# VICTORY

# query to read data from victory table
victory_query = '''
    SELECT * 
    FROM victory;
'''

# read data from victory table
victory_results = read_query(connection, victory_query)
victory_lists = []

# store data from victory table as list of lists
for result in victory_results:
    result = list(result)
    victory_lists.append(result)

# create dataframe from list of lists
victory_df = pd.DataFrame(victory_lists, columns=columns)
print('Victory:')
print(victory_df)
print('')

# TITAN MACHINERY

# query to read data from titan machinery table
titan_query = '''
    SELECT *
    FROM titan;
'''

# read data from titan table
titan_results = read_query(connection, titan_query)
titan_lists = []

# store data from titan table as list of lists
for result in titan_results:
    result = list(result)
    titan_lists.append(result)

# create dataframe from list of lists
columns = ['Product Name', 'Price', 'Manufacturer', 'More Info', 'Image Link', 'Category']
titan_df = pd.DataFrame(titan_lists, columns=columns)
print('Titan:')
print(titan_df)