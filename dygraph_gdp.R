file.choose()

install.packages("readxl")
library(readxl)

gdp1 = read_excel("D://Datasetssss//gdp_sample.xlsx")

head(gdp1)

options(scipen = 999)


library(tidyverse)

set.seed(1)

library(dygraphs)

str(gdp1)



###Predicting GDP Values in multiple methods:

library(forecast)

ts <- ts(c(0:3,1:4,2:5,3:6,4:7,5:8,6:9), frequency = 4, start = 2011)

GDP_Values <- ts(gdp1$GDP, frequency = 2, start = 2018)

plot(GDP_Values, main = "Sample World GDP Prediction", xlab = "Year Details", ylab = "GDP %")

plot(naive(GDP_Values), main = "Forecast World GDP Prediction using Naive Method", xlab = "Year Details", ylab = "GDP %")

plot(snaive(GDP_Values, h = 6), main = "Forecast World GDP Prediction using Seasonal Naive Method", xlab = "Year Details", ylab = "GDP %")


plot(forecast(HoltWinters(GDP_Values), h = 6),main = "Forecast World GDP Prediction using Holtwinter Method", xlab = "Year Details", ylab = "GDP %")




