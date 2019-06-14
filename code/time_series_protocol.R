#!/bin/env Rscript
# Author: Deraj Wilson-Aggarwal
# Script: vecbite_climate_import.R
# Desc: A script to combine climate data to abundance data for a given lat/long and date  
# Date: June 2019

# This script assumes data has been downloaded from Vecdyn 
# Therefore, Main_data imported should have the field sample_end_date, sample_long_dd and sample_lat_dd

rm(list=ls()) 
graphics.off()

#require(data.table)
require(dplyr)
# require(lubridate)
# require(ggplot2)
require(tidyr)


# Import the data - there are a number of examples available:
# "../Data/Culex_nigripalpus_walton.csv"
# "../Data/Culex_nigripalpus_manatee.csv"

# However, here we will look at Culex erraticus in the Walton County
Complete_data <- read.csv("../data/Culex_erraticus_walton.csv")

# select only the rows of interest 
Main_data <- select(Complete_data, c("sample_end_date", "sample_value", "sample_lat_dd", "sample_long_dd"))

# Make sure its in date format
Main_data$sample_end_date <- as.Date(Main_data$sample_end_date, format = "%Y-%m-%d")

# order by date 
Main_data <- Main_data[order(Main_data$sample_end_date, decreasing=FALSE),]

# create column for Month/Year and Month 
Main_data$Month_Yr <- format(as.Date(Main_data$sample_end_date), "%Y-%m")
Main_data$Month <- format(as.Date(Main_data$sample_end_date), "%m")

# Many sample values are returned with zeros which will cause problems once we log the abundance data 
# So, we can transform this data by scaling up by 0.00001 
Main_data$sample_value <- Main_data$sample_value + 0.00001

# Remove all zeros (on the slight off chance there are some)
Main_data<-subset(Main_data, Main_data$sample_value>0)
# create a log column - we could also use a log(x+1) transform rather than + 0.00001
Main_data$log_sample <- log(Main_data$sample_value)

# Pre-allocate the rows by filling with NAs
Main_data$Max.Temp <- NA
Main_data$Precipitation <- NA


#####################################
# Import Climate Data 
#####################################
# Next, we can import the climate data to be matched up to the abundance data 
Climate_data <- read.csv("../data/vectorbase_locations_dates_climate.csv")

# We can now populate these columns by matching up the date and closest lat/longs available in the climate dataset

# For each row in Main_data
for (row in 1:nrow(Main_data)){
  # extract the date associated with the row 
  date <- as.character(Main_data[row, "sample_end_date"])
  # subset the climate data to only those with the same date
  data <- subset(Climate_data, Climate_data$Collection.date.range == date)
  
  if (nrow(data)>0){
    # define the long and lat desired
    long <- as.numeric(Main_data[row, "sample_long_dd"])
    lat <- as.numeric(Main_data[row, "sample_lat_dd"])
    
    # find the absolute differences between desired lat/longs to the climate datasets
    x <- abs(data$Initial_latitude - lat)
    y <- abs(data$Initial_longitude - long)
    
    # find the index for which there is the minimum overall difference between lat/longs 
    z<-which(x+y==min(x+y))
    
    # draw out the max temp and place into main data frame 
    Main_data[row, "Max.Temp"] <- data[z, "Max.Temp"]
    Main_data[row, "Precipitation"] <- data[z, "Precipitation"]
    
  }
  
  else{
    # If there arent any data to extract, input NAs - may be errors in the rows
    Main_data[row, "Max.Temp"] <- NA
    Main_data[row, "Precipitation"] <- NA
  }
  
}


# aggregate can be used to average those in the same month for Specimens, Temp and Precipitation 
Aggregated_data <- aggregate(cbind(sample_value, Max.Temp, Precipitation, log_sample) ~ Month_Yr, data = Main_data, mean)


################################
# Time series linear models  
################################

# create a dataframe containing covariates 

t <- 2:nrow(Aggregated_data)
TS_df <- data.frame(Specimens=Aggregated_data$log_sample[2:nrow(Aggregated_data)],
                        SpecimensPast=Aggregated_data$log_sample[1:nrow(Aggregated_data)-1],
                        t=t,
                        Month=Aggregated_data$Month[2:nrow(Aggregated_data)],
                        Max.Temp=Aggregated_data$Max.Temp[2:nrow(Aggregated_data)],
                        Precipitation=Aggregated_data$Precipitation[2:nrow(Aggregated_data)],
                        sin12=sin(2*pi*t/12), cos12=cos(2*pi*t/12))


# Here we will conduct and plot a number of linear regression models for our data
# we will progressively add components to see which best predicts the data given 

# plot the log sample 
par(mfrow=c(1,1))
plot(t, TS_df$Specimens, type="l", xlab = "Time (months)", ylab = "log(Count + 0.00001)")

# create a vector to store the adjusted R squared for each model 
adj.R2 <- vector()

# first we will look at how the previous time step and the time itself can predict

TS_lm_sin_cos <- lm(Specimens ~ sin12 + cos12, data = TS_df)
#summary(TS_lm_temp)
# add a line to the plot for this particular model 
lines(t, TS_lm_sin_cos$fitted, col="green", lwd=2)
# we will store the R2 for later, so that we can make direct comparisons 
adj.R2 <- c(adj.R2, summary(TS_lm_sin_cos)$adj.r.squared)

# How about the previous time step? 
TS_lm <- lm(Specimens ~ SpecimensPast, data = TS_df)
#summary(TS_lm)
lines(t, TS_lm$fitted, col="pink", lwd=2)
adj.R2 <- c(adj.R2, summary(TS_lm)$adj.r.squared)

# Next, let's add the maximum temperature into our model 
TS_lm_temp <- lm(Specimens ~ SpecimensPast + Max.Temp, data = TS_df)
#summary(TS_lm_temp)
lines(t, TS_lm_temp$fitted, col="red", lwd=2)
adj.R2 <- c(adj.R2, summary(TS_lm_temp)$adj.r.squared)

# Now, let's try looking at precipitation 
TS_lm_precip <- lm(Specimens ~ SpecimensPast + Precipitation, data = TS_df)
#summary(TS_lm_precip)
lines(t, TS_lm_precip$fitted, col="blue", lwd=2)
adj.R2 <- c(adj.R2, summary(TS_lm_precip)$adj.r.squared)

# finally, let's incorporate all of our factors into one model 
TS_lm_all <- lm(Specimens ~ SpecimensPast + Max.Temp + Precipitation, data = TS_df)
#summary(TS_lm_all)
lines(t, TS_lm_all$fitted, col="purple", lwd=2)
adj.R2 <- c(adj.R2, summary(TS_lm_all)$adj.r.squared)

# now let's have a look at how each model performed comparitively 
print(adj.R2)

# Which model performed the best? Did the sin/cosine models work well? 


# 
# 
# ##### Have a look at the residuals - WHY 
# 
# par(mfrow=c(1,2))
# TS_sin_residuals <- TS_lm_sin$residuals
# plot(TS_sin_residuals, type = "l")
# acf(TS_sin_residuals)
# 
# TS_lm_temp_residuals <- TS_lm_temp$residuals
# plot(TS_lm_temp_residuals, type = "l")
# acf(TS_lm_temp_residuals)
# 
# # anova to look for differences 
# anova(TS_lm_sin, TS_lm_temp)
# 
# 
###################
# Model Comparison 
###################


n<-length(Aggregated_data$log_sample)-1
bics<-c(mod1=extractAIC(TS_lm_temp, k=log(n))[2], mod2=extractAIC(TS_lm_all, k=log(n))[2])
ebics<-exp(-0.5*(bics-min(bics)))
probs<-ebics/sum(ebics)
rbind(round(bics, 5), round(probs, 5))

# generally, we look for evidence of the lowest BIC value
# A difference of greater than 2 shows evidence against the higher scored model
# with greater than 10 showing strong evidence




