library(tidyverse)
library(sf)
library(tmap)
library(leaflet)

roadbg<-read_sf("roadnew.shp")
anpr<-read_sf("anpr.shp")
test<-read_sf("test0820.shp")

p<-tm_shape(roadbg)+tm_lines()+tm_shape(anpr)+tm_symbols(scale = 0.3)+tm_shape(test)+tm_lines('GroupCount')

tmap_mode('view')
tm_shape(anpr)+tm_symbols(scale = 0.3)+tm_shape(test)+tm_lines('GroupCount',scale=2)