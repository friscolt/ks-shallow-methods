
# FUNCTIONS FOR EXTRACTING FEATURES FROM IMAGES

import os
import numpy as np
import pandas as pd
from math import pow, sqrt
from skimage.color import rgb2hsv 
from skimage import io 
from skimage.feature import local_binary_pattern
from google.colab import data_table
data_table.enable_dataframe_formatter()

def getEnergy(img):
    # Convert BGR to HSV and parse HSV
    hsv_img = rgb2hsv(img)
    h, s, v = hsv_img[:, :, 0], hsv_img[:, :, 1], hsv_img[:, :, 2]
    # Get height, width and number of pixels of the image
    height = img.shape[0]
    width = img.shape[1]
    pixels = (height-2) * (width-2)
    energy_h = [0] * pixels
    energy_s = [0] * pixels
    energy_v = [0] * pixels
    pixel = 0
        
    #Calculate the energy of each pixel (channel selected by user)
    #print('Getting energy from H channel')
    for j in range(height-2): #external for, height (start in j+1, end in height-2)
        for k in range(width-2): #internal for, width (start in k+1, end in width-2)
            x1 = h[j+1][k]
            x2 = h[j+1][k+2]
            y1 = h[j][k+1]
            y2 = h[j+2][k+1]
            
            energy = sqrt(pow((x1-x2),2) + pow((y1-y2),2))
            energy_h[pixel] = energy
            pixel += 1
            
    pixel = 0               
    #print('Getting energy from S channel')
    for j in range(height-2): #external for, height (start in j+1, end in height-2)
        for k in range(width-2): #internal for, width (start in k+1, end in width-2)
            x1 = s[j+1][k]
            x2 = s[j+1][k+2]
            y1 = s[j][k+1]
            y2 = s[j+2][k+1]
            
            energy = sqrt(pow((x1-x2),2) + pow((y1-y2),2))
            energy_s[pixel] = energy
            pixel += 1
            
    pixel = 0              
    #print('Getting energy from V channel')
    for j in range(height-2): #external for, height (start in j+1, end in height-2)
        for k in range(width-2): #internal for, width (start in k+1, end in width-2)
            x1 = v[j+1][k]
            x2 = v[j+1][k+2]
            y1 = v[j][k+1]
            y2 = v[j+2][k+1]
            
            energy = sqrt(pow((x1-x2),2) + pow((y1-y2),2))
            energy_v[pixel] = energy
            pixel += 1
    
    # get histogram from eHSV
    (histH, _) = np.histogram(energy_h)
    (histS, _) = np.histogram(energy_s)
    (histV, _) = np.histogram(energy_v)
    histHSV = np.hstack((histH,histS,histV))

    return histHSV #Array of 1 x 30

def lbphist(img,n_points, radius, METHOD):
  n_points = n_points - 2
  lbp = local_binary_pattern(img, n_points, radius, METHOD)
  # get histogram from LBP
  (hist, _) = np.histogram(lbp.ravel(),bins=np.arange(0, n_points + 3),range=(0, n_points + 2))
  # normalize the histogram
  hist = hist.astype("float")
  hist /= (hist.sum() + 1e-7)   
  #print(hist.shape)
  return hist

def extract_features(path_folder,details):
    #print(path_folder)
    list_images = os.listdir(path_folder)
    #print(list_images)

  # Settings for Local Binary Pattern
    radius = 3
    n_points = 10
    METHOD = 'default'
    cont = 0
    for image in list_images:
      #print(name_image[-3:])
      if(image[-4:] == '.png'):
        #print(image)
        path_image = os.path.join(path_folder, image)
        img = io.imread(path_image, as_gray=False)
        img_gray = io.imread(path_image, as_gray=True)
        energy_HSV = getEnergy(img)
        hist = lbphist(img_gray,n_points, radius, METHOD)
        #details = ['SUR_AU','test','SUR','AU', 1]
        FOLDER = details[0]
        SET = details[1]
        VIEW = details[2]
        CLASS = details[3]
        LABEL = details[4]
        
        features = np.hstack((image, FOLDER, SET, VIEW, CLASS, LABEL, energy_HSV, hist))
        #print(features)
        if cont == 0:
          list_features = features
          cont += 1
        else:
          list_features = np.vstack((list_features,features))
    
    #return list_features

    df_features = pd.DataFrame(list_features, columns = ['image', 'folder', 'set', 'view', 'class','label','h0','h1','h2','h3','h4','h5','h6','h7','h8','h9','s0','s1','s2','s3','s4','s5','s6','s7','s8','s9','v0','v1','v2','v3','v4','v5','v6','v7','v8','v9','lbp0','lbp1','lbp2','lbp3','lbp4','lbp5','lbp6','lbp7','lbp8','lbp9'])
    return df_features




## MAIN



