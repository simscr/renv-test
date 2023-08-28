
# renv testing ------------------------------------------------------------

pacman::p_load(tidyverse, rio, here, janitor, ggdist)

conflicted::conflicts_prefer(dplyr::select, .quiet = TRUE)
conflicted::conflicts_prefer(dplyr::filter, .quiet = TRUE)
conflicted::conflicts_prefer(janitor::clean_names, .quiet = TRUE)

theme_set(theme_bw(base_size = 15) + 
            theme(legend.position = "bottom", 
                  legend.direction = "horizontal",
                  strip.background = element_rect(fill = "white")))


mpg |> 
  ggplot(aes(cty, hwy)) + 
  geom_jitter(shape = 21, fill = "lightgreen", alpha = 0.5)


lm(data = mpg, cty ~ hwy) |> 
  broom::tidy()
