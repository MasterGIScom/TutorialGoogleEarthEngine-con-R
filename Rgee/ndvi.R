#load packages
library(sp)
library(cptcity)
library(rgee)
library(sf)

#address the folder where we are working
setwd("D:/MASTERGIS/rgee-ProImages")

#area
ar_ee<-st_read("shapefile/yungay.shp")%>%
  sf_as_ee()

Map$centerObject(ar_ee)
Map$addLayer(ar_ee)

#loading a satellite image of GEE

yun<-ee$Image("")$
  clip(ar_ee)%>%
  ee$Image$select(c("B6", "B5", "B4" ))

#display
Map$centerObject(yun)
Map$addLayer(yun)

#NDVI
NDVI<-yun$normalizedDifference(c("B5", "B4"))

#display
Map$centerObject(NDVI)
Map$addLayer(eeObject =NDVI,  visParams = list(
  min = 0.2 ,
  max = 0.8 ,
  palette = cpt("grass_ndvi", 10)
))

