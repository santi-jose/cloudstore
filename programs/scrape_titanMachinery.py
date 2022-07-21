import time
import shutil
import pandas as pd
from datetime import datetime
from selenium import webdriver
from selenium.webdriver.chrome.service import Service

# - Product Name
# - Manufacturer
# - Price
# - Link to Product Listing
# - Product category
# - Image Link


def titanmachinery_products_df():
    names = []
    prices = []
    manufacturers = []
    links = []
    categories = []
    images = []
    time = []


    service = Service('/Users/litzamendez/Documents/chromedriver')
    service.start()
    driver = webdriver.Remote(service.service_url)

    driver.get('https://titanmachinery.com/equipment/used-equipment?Condition=Used')
    # get the product name
    
    products = driver.find_elements("xpath", '//h2[@class="card-title"]')
    for product in products:
        name = product.get_attribute('innerHTML').strip()
        names.append(name)

    # get the price
    pricesInfo = driver.find_elements("xpath", '//p[@class="card-equipment-price"]')
    for price in pricesInfo:
        p = price.text.strip()
        if p != "":
            prices.append(p)

    # get product link
    linksInfo = driver.find_elements("xpath", '//a[@class="btn btn-default btn-titan white"]')
    for link in linksInfo:
        links.append(link.get_attribute('href'))



    # get category
    categoryInfo = driver.find_elements("xpath", '//p[@class="card-equipment-category"]')
    for category in categoryInfo:
        categories.append(category.text.strip())

    # get image link
    imageLinks = driver.find_elements("xpath", '//img[@class="card-img"]')
    for ilink in imageLinks:
        images.append(ilink.get_attribute('src'))

    # get manufacturer
    for link in links:
        driver.get(link)
        item = driver.find_elements("xpath", '//div[@class="detail-specs-item"]') 
        manufacturers.append(item[1].get_attribute('innerHTML'))

    driver.quit()
    data = {'Product Name': names, 'Price': prices, 'Manufacturer': manufacturers, 'More Info': links, 'Image Link': images, 'Category': categories}
    df = pd.DataFrame(data)
    print(df.head())
    return df


titanmachinery_products_df()