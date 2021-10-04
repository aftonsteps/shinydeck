stream_deck_buttons <-
  data.frame(x = c(1, 2, 3, 1, 2, 3),
             y = c(1.2, 1.2 ,1.2, 1, 1, 1),
             label = c("Fairy Bless",
                       "Fairy Magic",
                       "Geese",
                       "Flute Music",
                       "Player Boost",
                       "Kitty"),
             onclick = c("mixkit-fairy-bell-bless-864.wav",
                         "mixkit-fairy-magic-wand-862.wav",
                         "mixkit-flock-of-wild-geese-20.wav",
                         "mixkit-melodical-flute-music-notification-2310.wav",
                         "mixkit-player-boost-recharging-2040.wav",
                         "mixkit-sweet-kitty-meow-93.wav")) %>%
  dplyr::mutate(onclick = paste0('var audio = new Audio("www/', onclick, '"); audio.play();'))

usethis::use_data(stream_deck_buttons, overwrite = TRUE)
