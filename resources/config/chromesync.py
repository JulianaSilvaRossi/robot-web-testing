from selenium import webdriver
from selenium.webdriver.chrome.service import Service as ChromeService
from webdriver_manager.chrome import ChromeDriverManager
# from webdriver_manager.core.utils import read_version_from_cmd 
# from webdriver_manager.core.os_manager import PATTERN

def get_chromedriver_path():
    driver_path = ChromeDriverManager().install()
    print(f'Driver path: {driver_path}')

    driver = webdriver.Chrome(service=ChromeService(driver_path))
    print(f'Driver name: {driver.name}')
    
    return  driver_path


