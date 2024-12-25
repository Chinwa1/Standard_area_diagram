
pak::pkg_install("TiagoOlivoto/pliman")
pak::pkg_install("TiagoOlivoto/plimanshiny")

Last.error
library(shiny)
devtools::install_github("TiagoOlivoto/pliman",build_vignettes = TRUE)

devtools::install_github("TiagoOlivoto/plimanshiny")

library(pliman)
library(plimanshiny)
run_app()

if (!require(remotes)) {
  install.packages("remotes")
}

remotes::install_github("emdelponte/r4pde")
1
library(r4pde)
pak::pkg_install("Icens")
pak::pkg_install("emdelponte/r4pde")
remotes::install_github("emdelponte/r4pde",force = TRUE)
1

####Ebimage installation

if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("EBImage")
