from selenium import webdriver
from selenium.webdriver.firefox.service import Service as FirefoxService
from webdriver_manager.firefox import GeckoDriverManager

def get_firefoxdriver_path():
    driver_path = GeckoDriverManager().install()
    print(f'Driver path: {driver_path}')

    driver = webdriver.Firefox(service=FirefoxService(driver_path))
    print(f'Driver name: {driver.name}')
    driver.quit
    
    return  driver_path
