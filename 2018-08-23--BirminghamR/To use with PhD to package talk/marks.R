library(tidyverse)
library(readxl)

marks <- read_excel("data-raw/raw_marks.xlsx")

marks <- marks %>%
  rename(first_name = `First name`,
         last_name = `Last name`) %>%
  mutate(percent = `Mark/50` * 2) %>%
  select(first_name, last_name, percent)

usethis::use_data(marks)
rm(marks)
