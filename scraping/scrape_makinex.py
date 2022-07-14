from bs4 import BeautifulSoup
import requests

# look for products being sold on Makinex for $x or less
# identify:
# - Product Name
# - Manufacturer
# - Price
# - Link to Product Listing

print('Enter a price ceiling for the products')
price_ceiling = float(input('>'))
(print(f'Filtering prices <= {price_ceiling}'))

def find_product():
    # get the html text
    url = 'https://makinex.com/products/'
    headers = {'User-Agent' : 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36'}
    html_text = requests.get(url, headers=headers).text

    # get the products
    soup = BeautifulSoup(html_text, 'lxml')
    products = soup.find_all('div', class_='wpb_column vc_column_container vc_col-sm-6')
    
    # loop through products
    for product in products:
        
        # check for products w/ price <= price_ceiling
        price = product.find('h6').text
        price_str = price[1:len(price)].translate({ord('$'): None, ord(','): None})
        price_float = float(price_str) #store price as int
        if price_float <= price_ceiling:
            name = product.find('h3').text
            link = product.find('a')['href']
            print(f'Product Name: {name}')
            print(f'Price: {price}') 
            print(f'More Info: {link}')
            print('')
    

find_product()

