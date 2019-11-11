library(tmap)
tmap("grid")
tm_shape(grid)
map_grid<- tm_shape(grid_count)+ tm_polygons()+tm_fill(col="LatPlusBoth_per_grid_noNA")

map_grid<- tm_shape(grid_count)+tm_fill(col="LatPlusBoth_per_grid_noNA")
breaks = c(0, 3, 5, 10,20) 
map_grid_count<-tm_shape(grid_count) + tm_polygons(col = "LatPlusBoth_per_grid_noNA", breaks = breaks,popup.vars=c("number_facilities"= "LatPlusBoth_per_grid_noNA"))  

map_grid_count<-tm_shape(grid_count) + tm_polygons(col = c("LatPlusBoth_per_grid_noNA","BathingPlusBoth_per_grid_noNA"), breaks = breaks)+tm_facets(sync=TRUE, ncol=2)

gridtest<-tm_shape(grid_count) +
  tm_polygons(c("LatPlusBoth_per_grid_noNA","BathingPlusBoth_per_grid_noNA"),popup.vars=c("Number Latrine"="LatPlusBoth_per_grid_noNA","Number Bathing"="BathingPlusBoth_per_grid_noNA")) +
  tm_facets(sync = TRUE, ncol = 2)

map_grid<-tm_shape(grid_count) +
  tm_polygons(c("LatPlusBoth_per_grid_noNA","BathingPlusBoth_per_grid_noNA"),
              title=c("# Latrine", "#Bathing"),popup.vars=c("Number Latrine"="LatPlusBoth_per_grid_noNA","Number Bathing"="BathingPlusBoth_per_grid_noNA")) +
  tm_facets(sync = TRUE, ncol = 2)

map_grid_2<-map_grid_count+tm_shape(grid_count)+ tm_polygons(col = "BathingPlusBoth_per_grid_noNA", breaks = breaks)  


tmap_mode("view")
map_grid
map_grid_2
map_grid_count
gridtest
windows();map_grid

tm_shape(nz) + tm_polygons(col = "Median_income", breaks = breaks)  