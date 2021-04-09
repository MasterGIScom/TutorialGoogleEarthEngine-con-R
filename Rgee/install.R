#installation
install.packages('googledrive')
install.packages('rgee') 

library(googledrive)
library(rgee)

# rtools
Sys.which('make')

#Packages of rgee
ee_install()
  #console
    "Would you like to install Miniconda? [Y/n]:Y "
    
    "1. Removing the previous Python Environment (rgee), if it exists ..."
    "2. Creating a Python Environment (rgee)"
    
    "Would you like to continues? [Y/n]:Y"
    
    "3. The Environment Variable 'Dirección de la capeta'was stored in the file."
    "4. Installing the earthengine-api."
    
    "Do you want restart your R session? 
      1: yes
      2: no"

#initializing rgee 
ee_Initialize('juniorcalvo', drive = TRUE)

ee_users()
#clean a credentials
ee_clean_credentials('junior')

#loading a satellite image collection of GEE

coll <-ee$ImageCollection('LANDSAT/LC08/C01/T1_TOA')$ 
  filterDate('2019-04-01','2020-06-30')$
  filterBounds(ee$Geometry$Point(-76.68,-8.65))$ 
  filterMetadata('CLOUD_COVER','less_than',10)

ee_get_date_ic(coll)
#loading a satellite image of GEE
l8<-'LANDSAT/LC08/C01/T1_TOA/LC08_008066_20200610' %>% 
  ee$Image() %>%
  ee$Image$select(c('B6', 'B5', 'B4'))

#display
Map$centerObject(l8)
Map$addLayer(l8)
