# import data set

library(tidyverse)

# read and clean data
Flagstaff_Weather <- read.csv('data-raw/Pulliam_Airport_Weather_Station.csv') %>%
  mutate(TempMax = TMAX) %>%
  mutate(TempMin = TMIN) %>%
  select(DATE, PRCP, SNOW, TempMax, TempMin) %>%
  mutate(DATE = lubridate::ymd(DATE))

# save to data directory as .rda
usethis::use_data(Flagstaff_Weather)
