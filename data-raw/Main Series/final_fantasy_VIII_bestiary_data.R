library(readr)

if (file.exists("data-raw/Main Series/final_fantasy_VIII_bestiary_data.csv")) {
  raw_file <- read_csv("./data-raw/Main Series/final_fantasy_VIII_bestiary_data.csv")
} else {
  load_data <- get(load("data/Final_Fantasy_VIII.rda"))
  raw_file <- write_csv(load_data, file = "./data-raw/Main Series/final_fantasy_VIII_bestiary_data.csv")
}

newdata <- raw_file

Final_Fantasy_VIII <- newdata

usethis::use_data(Final_Fantasy_VIII, overwrite = TRUE)
