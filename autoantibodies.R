####Analysis for Data from North India Type 1 Diabetes study####
###Load the required libraries###
if(!require(tidyverse)){
  install.packages("tidyverse"); library(tidyverse)}

####Data Input####
#cd into the folder that contains the 'autoantibodies.csv' folder
#setwd("/Users/Rick/Documents/Tulane/Research/Navvy\ project/")
##data
aaData<-read.csv(file = 'autoantibodies.csv')


####Descriptive Statistics####
###Prevelance of antibodies###
# #prevalence of GAD_65
# prevGAD65<-sum(na.omit(aaData$GAD_65))/dim(aaData)[1]
# #prevalence of IAA
# prevIAA<-sum(na.omit(aaData$IAA))/dim(aaData)[1]
# #prevalence of IA_2
# prevIA_2<-sum(na.omit(aaData$IA_2))/dim(aaData)[1]
# #prevalence of TMA
# prevTMA<-sum(na.omit(aaData$TMA))/dim(aaData)[1]
# #prevalence of tTG
# prevtTG<-sum(na.omit(aaData$tTG))/dim(aaData)[1]
# #prevalence of ZnT8
# prevZnT8<-sum(na.omit(aaData$ZnT8))/dim(aaData)[1]
# 
# ####Regression analysis####
# ###effect of Age of onset on each autoantibody###
# #GAD65
# ageGAD65<-lm(Age_onset~GAD_65, data = aaData)
# #IAA
# ageIAA<-lm(Age_onset~IAA, data = aaData)
# #IA_2
# ageIA_2<-lm(Age_onset~IA_2, data = aaData)
# #TMA
# ageTMA<-lm(Age_onset~TMA, data = aaData)
# #tTG
# agetTG<-lm(Age_onset~tTG, data = aaData)
# #ZnT8
# ageZnT8<-lm(Age_onset~ZnT8, data = aaData)