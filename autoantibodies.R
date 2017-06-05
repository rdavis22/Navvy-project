####Analysis for Data from North India Type 1 Diabetes study####
###Load the required libraries###
if(!require(tidyverse)){
  install.packages("tidyverse"); library(tidyverse)}

####Data Input####
#cd into the folder that contains the 'autoantibodies.csv' folder
path<-paste0(getwd(), "/Tulane/Research/Navvy\ project/")
setwd(path)
#data
aaData<-read.csv(file = 'autoantibodies.csv')

####Autoantibody regression models####
###Prevelance of antibodies###