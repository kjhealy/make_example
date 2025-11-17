out <- ggplot2::ggplot(
  data = my_mtcars,
  mapping = ggplot2::aes(x = disp, y = mpg)
) +
  ggplot2::geom_smooth() +
  ggplot2::geom_point()

ggplot2::ggsave(here::here("figures/mpg_vs_disp.pdf"), out)
