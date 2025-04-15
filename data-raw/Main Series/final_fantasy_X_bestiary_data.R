library(readr)

if (file.exists("data-raw/Main Series/final_fantasy_X_bestiary_data.csv")) {
  raw_file <- read_csv("./data-raw/Main Series/final_fantasy_X_bestiary_data.csv")
} else {
  load_data <- get(load("data/final_fantasy_X_bestiary_data.rda"))
  raw_file <- write_csv(load_data, file = "./data-raw/Main Series/final_fantasy_X_bestiary_data.csv")
}

newdata <- raw_file

final_fantasy_X_bestiary_data <- newdata

usethis::use_data(final_fantasy_X_bestiary_data, overwrite = TRUE)
