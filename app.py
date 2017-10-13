#!/usr/bin/env python

import subprocess, os
from selenium import webdriver

# Set up virtual frame buffer
xvfb = subprocess.Popen(["Xvfb", ":10", "-ac"])
os.environ["DISPLAY"] = ":10"

print "Loading Selenium"

driver = webdriver.Firefox()
driver.get("http://www.google.com")
print driver.title
driver.close()

print "Done"
