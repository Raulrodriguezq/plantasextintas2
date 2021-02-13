Trabajo con plantas extintas
================

# Introducción

En este documento trabajaremos para explorar la identidad de plantas
extintas en diferentes ecosistemas segun la
[*IUCN*](https://www.iucnredlist.org/)

## Trabajando con los datos

Iniciaremos cargando los paquetes y librerias para trabajar

``` r
library(tidyverse)
```

    ## -- Attaching packages --------------------------------------- tidyverse 1.3.0 --

    ## v ggplot2 3.3.2     v purrr   0.3.4
    ## v tibble  3.0.4     v dplyr   1.0.2
    ## v tidyr   1.1.2     v stringr 1.4.0
    ## v readr   1.4.0     v forcats 0.5.0

    ## -- Conflicts ------------------------------------------ tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

Ahora voy a leer los datos con los que trabajare

``` r
plants <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-08-18/plants.csv')
```

    ## 
    ## -- Column specification --------------------------------------------------------
    ## cols(
    ##   .default = col_double(),
    ##   binomial_name = col_character(),
    ##   country = col_character(),
    ##   continent = col_character(),
    ##   group = col_character(),
    ##   year_last_seen = col_character(),
    ##   red_list_category = col_character()
    ## )
    ## i Use `spec()` for the full column specifications.

## Filtrando los datos para resolver el ejemplo 1

El código que se ejecutará es usado para resolver un problema
[slide](https://rstudio.com/wp-content/uploads/2015/03/rmarkdown-spanish.pdf)
para colocar en la base de datos solo los correspondientes a Chile, y
solo usar las columnas del pais (*coutrty*), las especies
(*binomial\_name*) y las categoria IUCN (*red\_list\_category*)

``` r
Chile<-plants %>%
  dplyr::filter(country=="chile") %>% 
  dplyr::select(binomial_name,country, red_list_category)
Chile
```

    ## # A tibble: 0 x 3
    ## # ... with 3 variables: binomial_name <chr>, country <chr>,
    ## #   red_list_category <chr>
