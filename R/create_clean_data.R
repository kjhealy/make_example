mtcars_raw <- readr::read_csv(here::here("data-raw", "mtcars.csv"))

# cleaned
readr::write_csv(mtcars_raw, here::here("data", "my_mtcars.csv"))
