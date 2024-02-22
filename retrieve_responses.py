from selenium import webdriver
import os

url = "https://www.google.com/"

options = webdriver.FirefoxOptions()
options.headless = True
options.binary_location = "/usr/bin/firefox-esr"

driver = webdriver.Firefox(options=options)
driver.get(url)
print(driver.page_source)
driver.quit()
