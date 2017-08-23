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
  setwd("C:/Users/Rick/Documents/Tulane/Research/Navvy\ project/") 
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
prevGAD65all<-sum(GAD_65)/dim(aaData)[1]
#male patients
prevGAD65male<-sum(GAD_65[Sex=="M"])/dim(aaData)[1]
#female patients
prevGAD65female<-sum(GAD_65[Sex=="F"])/dim(aaData)[1]
#patients less than 10
prevGAD65less10<-sum(GAD_65[Age<10])/dim(aaData)[1]
#patients greater than 10
prevGAD65great10<-sum(GAD_65[Age>10])/dim(aaData)[1]

##prevalence of IAA
#all patients
prevIAAall<-sum(na.omit(IAA))/dim(aaData)[1]
#male patients
prevIAAmale<-sum(na.omit(IAA[Sex=="M"]))/dim(aaData)[1]
#female patients
prevIAAfemale<-sum(na.omit(IAA[Sex=="F"]))/dim(aaData)[1]
#patients less than 10
prevIAAless10<-sum(na.omit(IAA[Age<10]))/dim(aaData)[1]
#patients greater than 10
prevIAAgreat10<-sum(na.omit(IAA[Age>10]))/dim(aaData)[1]

##prevalence of IA_2
#all patients
prevIA_2Aall<-sum(na.omit(IA_2))/dim(aaData)[1]
#male patients
prevIA_2male<-sum(na.omit(IA_2[Sex=="M"]))/dim(aaData)[1]
#female patients
prevIA_2female<-sum(na.omit(IA_2[Sex=="F"]))/dim(aaData)[1]
#patients less than 10
prevIA_2less10<-sum(na.omit(IA_2[Age<10]))/dim(aaData)[1]
#patients greater than 10
prevIA_2great10<-sum(na.omit(IA_2[Age>10]))/dim(aaData)[1]

##prevalence of TMA
#all patients
prevTMAall<-sum(na.omit(TMA))/dim(aaData)[1]
#male patients
prevTMAmale<-sum(na.omit(TMA[Sex=="M"]))/dim(aaData)[1]
#female patients
prevTMAfemale<-sum(na.omit(TMA[Sex=="F"]))/dim(aaData)[1]
#patients less than 10
prevTMAless10<-sum(na.omit(TMA[Age<10]))/dim(aaData)[1]
#patients greater than 10
prevTMAgreat10<-sum(na.omit(TMA[Age>10]))/dim(aaData)[1]

##prevalence of tTG
#all patients
prevtTGall<-sum(na.omit(tTG))/dim(aaData)[1]
#male patients
prevtTGmale<-sum(na.omit(tTG[Sex=="M"]))/dim(aaData)[1]
#female patients
prevtTGfemale<-sum(na.omit(tTG[Sex=="F"]))/dim(aaData)[1]
#patients less than 10
prevtTGless10<-sum(na.omit(tTG[Age<10]))/dim(aaData)[1]
#patients greater than 10
prevtTGgreat10<-sum(na.omit(tTG[Age>10]))/dim(aaData)[1]

##prevalence of ZnT8
#all patients
prevZnT8all<-sum(na.omit(ZnT8))/dim(aaData)[1]
#male patients
prevZnT8male<-sum(na.omit(ZnT8[Sex=="M"]))/dim(aaData)[1]
#female patients
prevZnT8female<-sum(na.omit(ZnT8[Sex=="F"]))/dim(aaData)[1]
#patients less than 10
prevZnT8less10<-sum(na.omit(ZnT8[Age<10]))/dim(aaData)[1]
#patients greater than 10
prevZnT8great10<-sum(na.omit(ZnT8[Age>10]))/dim(aaData)[1]

###Prevalence of Demographics###
##New-Onset (NO)##

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