print('Importing libraries...')
import datetime
from datetime import timedelta
import time
import os
import sys
import glob
import json

from selenium.webdriver import Chrome
from selenium.webdriver.chrome import webdriver as chrome_webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.support.select import Select
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import NoSuchElementException

import pandas as pd
from PIL import Image
import PIL.Image

import matplotlib
import matplotlib.pyplot as plt
import numpy as np
print('Finished importing libraries')
print('Environment provision successfully!')