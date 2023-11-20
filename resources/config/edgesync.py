from selenium import webdriver
from selenium.webdriver.edge.service import Service as EdgeService
from webdriver_manager.microsoft import EdgeChromiumDriverManager

def get_edgedriver_path():
    driver_path = EdgeChromiumDriverManager().install()
    print(f'Driver path: {driver_path}')

    driver = webdriver.Edge(service=EdgeService(driver_path))
    print(f'Driver name: {driver.name}')
    driver.close

    return  driver_path
