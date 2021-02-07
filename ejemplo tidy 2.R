library(tidyverse)
## cargar base de datos
data(mtcars)

##fitro de vehiculos con 8 cilindros  

mt<-mtcars %>% filter(cyl==8)
