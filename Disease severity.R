getwd()
setwd("E:/sample")
######loading the package for image analysis###
library(pliman)
library(tidygraph)
library(tidyr)
library(tidyselect)
##########
##############loading the image#####
img=image_import("E:/Field trials/Groundnut/Murewa/Sand/R3/Multiple images/Farmer 1/Bobwhite.JPG")
healthy=image_import("h.JPG")
symptoms=image_import("symptomatic.PNG")
background=image_import("background.JPG")
background="b1"
###using pallete
img=image_import("pea_Bobwhite5.JPG")
set_pliman_viewer("mapview")
b1=pick_palette(img)
h1=pick_palette(img)
s1=pick_palette(img)
####plot the image####
m1=image_segment(img, index = "BGI")
plot_measures(im, measure = "area")
####measure disease#####
image_autocrop(img)
image_resize(img,rel_size = 250,plot = TRUE)
########individual image####
###the symtom psrt was omitted to maximise the selection by the omputer####
im1=measure_disease(img = img,
                    img_background = background,
                    img_healthy = healthy,
                    img_symptoms = symptoms,
                    contour_col = "red",
                    show_segmentation = TRUE,
                    col_lesions = "blue",
                    plot = TRUE)
im1$severity
class(im1)
#######################batch processing
sev <-
  measure_disease(pattern = "sev_leaf",
                  img_healthy = "healthy",
                  img_symptoms = "sev_sympt",
                  img_background  = "sev_back",
                  plot = FALSE,
                  save_image = TRUE,
                  show_original = FALSE,
                  dir_original = image_pliman(),
                  dir_processed = tempdir())
sad(sev, n = 2)
###################
im=measure_disease(pattern = "pea",
                   dir_original = "E:/sample",
                   dir_processed = "E:/sample/analysis",
                   img_healthy = healthy,
                   img_symptoms = symptoms,
                   img_background = b1,
                   verbose = FALSE,
                   plot = TRUE,
                   show_segmentation = TRUE,
                   show_background = TRUE,
                   has_white_bg = TRUE,
                   show_original = TRUE,
                   show_contour = TRUE,
                   contour_col = "red",
                   contour_size = 3,
                   fill_hull = TRUE,
                  col_lesions ="red",
                   col_background = "white",
                   parallel = FALSE,
                   save_image = TRUE)
im$severity
class(im1)
sad(im,n=10)    

##############
grDevices::colors()
im1s=as.data.frame(im1$severity)
class(im1s)
im1$statistics
write.csv(im1s,file = "E:/Field trials/Groundnut/Murewa/Sand/R3/Multiple images/Farmer 1/Bobwhite.csv")
write.csv(im1s,"im1s.csv")
#############################
measure_disease_iter(img)
measure_disease(pattern = "F",
                dir_original = "leafspotnr2",
                dir_processed = "results",
                img_healthy=healthy,
                img_background = background)                     

#######################
library(pliman)
pal <- image_palette(m1, npal = 4)

image_combine(pal$palette_list)


library(pliman)
image_index(m1, index = c("R, NR"))

# Example for S3 method plot()
library(pliman)
# compute the index
ind <- image_index(img, index = c("R, G, B, NGRDI,NR,GLI,HI,L*"), plot = FALSE)
plot(ind)
class(ind$R)
# density plot
plot(ind, type = "density",
     return_class="terra")



library(pliman)
image_segment(img, index = c("R, G, B"))

#################################
library(pliman)
image_combine(img, healthy, symptoms,background, ncol = 2)

sev <-
  measure_disease(img = img,
                  img_healthy = healthy,
                  img_symptoms = symptoms,
                  img_background = background,
                  show_features = TRUE,
                  show_contour = TRUE,
                  contour_col = "white",
                  contour_size = 1,
                  plot = TRUE)
sev$severity

##############################
measure_disease_iter(
  img,
  has_background = TRUE,
  r = 2,
  viewer = get_pliman_viewer(),
  show = "rgb",
  index = "NGRDI",
)
#######################
if(interactive())
  # severity for the three leaflets (from left to right)
  img <- image_pliman("mult_leaves.jpg", plot = TRUE)
sev <-measure_disease_shp(img = m1,
                        nrow = 1,
                        ncol = 9,
                        index_lb = "B",
                        index_dh = "NGRDI")
  sev$severity
  sev$

sad(img, n = 3)
##############################
library(pliman)
img <- image_pliman("mult_leaves.jpg", plot = TRUE)
sev <-
  measure_disease_byl(img = img,
                      index_lb = "B",
                      index_dh = "NGRDI",
                      workers = 2)
sev$severity
#########################

library(pliman)
sev <-
  measure_disease(pattern = "sev_leaf",
                  img_healthy = "sev_healthy",
                  img_symptoms = "sev_sympt",
                  img_background  = "sev_back",
                  plot = FALSE,
                  save_image = TRUE,
                  show_original = FALSE,
                  dir_original = image_pliman(),
                  dir_processed = tempdir())
sad(sev, n = 2)
################
pak::pkg_install("TiagoOlivoto/plimanshiny")

library(pliman)
sev <-
  measure_disease(pattern = "sev_leaf",
                  img_healthy = "sev_healthy",
                  img_symptoms = "sev_sympt",
                  img_background  = "sev_back",
                  plot = FALSE,
                  save_image = TRUE,
                  show_original = FALSE,
                  dir_original = image_pliman(),
                  dir_processed = tempdir())
sad(sev, n = 2)
##################
??ccc
image_pliman("leaf")
