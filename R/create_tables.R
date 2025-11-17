tinytable::tt(my_mtcars) |>
  tinytable::save_tt(here::here("my_mtcars_summary.md"), overwrite = TRUE)
