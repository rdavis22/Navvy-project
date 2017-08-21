####Analysis for Data from North India Type 1 Diabetes study####
###Load the required libraries###
if(!require(tidyverse)){
  install.packages("tidyverse"); library(tidyverse)}
if(!require(RVAideMemoire)){
  install.packages("RVAideMemoire"); library(RVAideMemoire)}
if(!require(car)){
  install.packages("car"); library(car)}

####Data Input####
#cd into the folder that contains the 'autoantibodies.csv' folder
if (getwd()!="C:/Users/Rick/Documents/Tulane/Research/Navvy project"){
  setwd("/Users/Rick/Documents/Tulane/Research/Navvy\ project/") 
}
###data###
aaData<-read.csv(file = 'autoantibodies.csv')
#recode the 'Sex' Factor
aaData$Sex<-recode(aaData$Sex, "c('F', 'F ')='F';c('M', 'M ', '') = 'M'")
attach(aaData)

####Descriptive Statistics####

###Prevelance of antibodies###
##prevalence of GAD_65
#all patients
prevGAD65all<-sum(na.omit(GAD_65))/dim(aaData)[1]
#male patients
prevGAD65male<-sum(na.omit(GAD_65[Sex=="M"]))/dim(aaData)[1]
#female patients
prevGAD65female<-sum(na.omit(GAD_65[Sex=="F"]))/dim(aaData)[1]
#patients less than 10
prevGAD65less10<-sum(na.omit(GAD_65[Age<10]))/dim(aaData)[1]
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