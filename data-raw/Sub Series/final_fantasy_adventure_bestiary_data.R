library(readr)

if (file.exists("data-raw/Sub Series/final_fantasy_adventure.csv")) {
  raw_file <- read_csv("./data-raw/Sub Series/final_fantasy_adventure.csv")
} else {
  load_data <- get(load("data/Final_Fantasy_Adventure.rda"))
  raw_file <- write_csv(load_data, file = "./data-raw/Sub Series/final_fantasy_adventure.csv")
}

newdata <- raw_file

Final_Fantasy_Adventure <- newdata

usethis::use_data(Final_Fantasy_Adventure, overwrite = TRUE)
