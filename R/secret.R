pick_a_hat <- function() {
  hats <- c("mushroom", "newsboy", "sparkle headband", "cat ears 1",
            "cat ears 2", "bunny ears", "purple wig",
            "butterfly", "tiara", "birthday hat")

  return(sample(hats, 1))
}
