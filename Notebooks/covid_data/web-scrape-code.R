library(tidyverse)
library(rvest)

html <- read_html("https://www.worldometers.info/coronavirus/")
html1 <- html %>% html_table()
df <- data.frame(html1)
countries <- df[9:238, ]

## country wise
continent <- countries[, 16]
country_names <- countries[,2]
total_cases_of_countries <- countries[,3]
total_cases_of_countries <- as.numeric(gsub(",", "", total_cases_of_countries))
total_deaths1 <- countries[,5]
total_deaths1 <- as.numeric(gsub(",", "", total_deaths1))
total_recovered1 <- countries[,7]
total_recovered1 <- as.numeric(gsub(",", "", total_recovered1))
active_cases1 <- countries[,9]
active_cases1 <- as.numeric(gsub(",", "", active_cases1))
total_population1<- countries[,15]
total_population1 <- as.numeric(gsub(",", "", total_population1))

covid_effects_across_countries <- data.frame(continent, country_names, total_cases_of_countries, total_deaths1, total_recovered1, active_cases1, total_population1)
save(covid_effects_across_countries, file = "countries_data.Rdata")
write_csv(covid_effects_across_countries, file = "covid.csv")
