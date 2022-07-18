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

def toolots_products_df():
    print('Enter a price ceiling for the products')
    price_ceiling = float(input('>'))
    (print(f'Filtering prices <= {price_ceiling}'))

    # get the html text
    url = 'https://www.toolots.com/agricultural-forestry-landscaping-equipment.html'
    headers = {'User-Agent' : 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36'}
    html_text = requests.get(url, headers=headers).text

    # get the products
    soup = BeautifulSoup(html_text, 'html.parser')
    products = soup.find_all('div', class_='item col-lg-13 col-md-4 col-sm-6 col-xs-12')
    # lists to store data
    names = []
    prices = []
    manufacturers = []
    links = []
    categories = []
    images = []
    time = []

    # # loop through products
    for product in products:
        
        # check for products w/ price <= price_ceiling
        price = product.find('span', class_="price").text
        price_str = price[1:len(price)].translate({ord('$'): None, ord(','): None})
        price_float = float(price_str) #store price as int
        
        if price_float <= price_ceiling:
            name = product.find('div', class_='product-name').text.strip()
            name = name.replace('\n',' ') # replace \n with space ' '
            link = product.find('a')['href']

            # getting image link and category
            image = product.find('img')
            imageLink = image.attrs['src']
            productPage = requests.get(link, headers=headers).text
            soup = BeautifulSoup(productPage, "html.parser")
            try:
                manufacturer = soup.find('span', class_="wk_block_title_css").text.strip()
            except:
                manufacturer = 'none'

            # getting time of scrape
            dt = datetime.now()

            names.append(name)
            prices.append(price)
            manufacturers.append(manufacturer)
            links.append(link)
            images.append(imageLink)
            # categories.append(category)
            time.append(dt)

    # data = {'Product Name': names, 'Price': prices, 'Manufacturer': manufacturers,'More Info': links, 'Image Link': images, 'Category': categories, 'Time': time}
    data = {'Product Name': names, 'Price': prices, 'Manufacturer': manufacturers,'More Info': links, 'Image Link': images, 'Time': time}
    df = pd.DataFrame(data)
    # #print(df)
    return df
