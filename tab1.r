fn <- file.path("tab1.md")
tinytable::tt(mtcars) |> tinytable::save_tt(fn, overwrite = TRUE)
