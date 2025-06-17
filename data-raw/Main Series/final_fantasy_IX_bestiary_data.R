library(readr)

if (file.exists("data-raw/Main Series/final_fantasy_IX_bestiary_data.csv")) {
  raw_file <- read_csv("./data-raw/Main Series/final_fantasy_IX_bestiary_data.csv")
} else {
  load_data <- get(load("data/Final_Fantasy_IX.rda"))
  raw_file <- write_csv(load_data, file = "./data-raw/Main Series/final_fantasy_IX_bestiary_data.csv")
}

newdata <- raw_file

Final_Fantasy_IX <- newdata

usethis::use_data(Final_Fantasy_IX, overwrite = TRUE)
