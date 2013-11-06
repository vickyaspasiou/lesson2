rm(list = ls())
datdir=getwd()
library(rasta)



plot(1)


automap=function(ctr="FR",ctrlvl=2) {
  
  map <- raster::getData("GADM", country = ctr,level = ctrlvl, path = datdir)
  
  
  plot(map)
  plot(map, bg = "dodgerblue", axes=T)
  
  plot(map, lwd = 3, border = "skyblue", add=T)
  plot(map, col = "green4", add = T)
  grid()
  box()
  
  
  automap() 
   
