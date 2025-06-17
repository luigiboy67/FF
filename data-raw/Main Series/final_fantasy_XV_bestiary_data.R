library(readr)

if (file.exists("data-raw/Main Series/final_fantasy_XV_bestiary_data.csv")) {
  raw_file <- read_csv("./data-raw/Main Series/final_fantasy_XV_bestiary_data.csv")
} else {
  load_data <- get(load("data/Final_Fantasy_XV.rda"))
  raw_file <- write_csv(load_data, file = "./data-raw/Main Series/final_fantasy_XV_bestiary_data.csv")
}

newdata <- raw_file

Final_Fantasy_XV <- newdata

usethis::use_data(Final_Fantasy_XV, overwrite = TRUE)
