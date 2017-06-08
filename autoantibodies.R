####Analysis for Data from North India Type 1 Diabetes study####
###Load the required libraries###
if(!require(tidyverse)){
  install.packages("tidyverse"); library(tidyverse)}

####Data Input####
#cd into the folder that contains the 'autoantibodies.csv' folder
path<-paste0(getwd(), "/Tulane/Research/Navvy\ project/")
#setwd(path)
#data for prevalence
aaData<-read.csv(file = 'autoantibodies.csv')
#data
aaData2<-read.csv(file = 'Sheet for multivariate analysis.csv')

####Autoantibody regression models####
###Prevelance of antibodies###
#prevalence of GAD_65
prevGAD65<-sum(na.omit(aaData$GAD_65))/dim(aaData)[1]
#prevalence of IAA
prevIAA<-sum(na.omit(aaData$IAA))/dim(aaData)[1]
#prevalence of IA_2
prevIA_2<-sum(na.omit(aaData$IA_2))/dim(aaData)[1]
#prevalence of TMA
prevTMA<-sum(na.omit(aaData$TMA))/dim(aaData)[1]
#prevalence of tTG
prevtTG<-sum(na.omit(aaData$tTG))/dim(aaData)[1]
#prevalence of ZnT8
prevZnT8<-sum(na.omit(aaData$ZnT8))/dim(aaData)[1]