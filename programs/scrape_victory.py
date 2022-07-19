from bs4 import BeautifulSoup
from datetime import datetime
import requests
import pandas as pd
import shutil

# look for products being sold on Makinex for $x or less
# identify:
# - Product Name
# - Manufacturer
# - Price
# - Link to Product Listing
# - Product category
# - Image Link

def victory_products_df():
    print('Enter a price ceiling for the products')
    price_ceiling = float(input('>'))
    (print(f'Filtering prices <= {price_ceiling}'))

    # get the html text
    url = 'https://etractorimplements.com/products/'
    html_text = requests.get(url).text

    # get the products
    soup = BeautifulSoup(html_text, 'html.parser')
    products = soup.find('ul', class_="products columns-4")
    products = products.find_all('li')

    #lists to store data
    names = []
    prices = []
    manufacturers = []
    links = []
    categories = []
    images = []
    time = []

    for product in products:

        # check for products w/ price <= ceiling
        price = product.find('span', class_="price").text
        price_str = price[1:len(price)].replace(',','')
        price_float = float(price_str)

        if price_float <= price_ceiling:
            name = product.find('h2', class_='woocommerce-loop-product__title').text
            link = product.find('a')['href']
            product_page_text = requests.get(link).text
            
            # find cateogry from product page link
            product_soup = BeautifulSoup(product_page_text, 'html.parser')
            menu_items = product_soup.find('nav', class_='woocommerce-breadcrumb')
            menu_items = menu_items.find_all('a')
            category_str = ''
            for item in menu_items:
                if item.text != 'Home':
                    category_str = item.text

            #Find image link
            image = product.find('img')
            imageLink = image['data-src']

            # timestamp
            dt = datetime.now()

            names.append(name)
            prices.append(price)
            links.append(link)
            manufacturers.append('Victory')
            categories.append(category_str)
            images.append(imageLink)
            time.append(dt)


    data = {'Product Name': names, 'Price': prices, 'Manufacturer': manufacturers, 'More Info': links, 'Image Link': images, 'Category': categories, 'Time': time}
    df = pd.DataFrame(data)
    return df
