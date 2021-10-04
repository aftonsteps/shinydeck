#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  output$plot <-
    ggiraph::renderGirafe({
      sound_test <-
        'var audio = new Audio("www/mixkit-fairy-bell-bless-864.wav"); audio.play();'
      p <-
        ggplot2::ggplot(data = stream_deck_buttons) +
        ggiraph::geom_label_interactive(mapping =
                                          ggplot2::aes(x = x,
                                                       y = y,
                                                       label = label,
                                                       fill = label,
                                                       data_id = label,
                                                       onclick = onclick
                                                      ),
                                        color = "white",
                                        family = "Cute Font",
                                        size = 8) +
        ggplot2::coord_cartesian(xlim = c(0.5, 3.5), ylim = c(0.8, 1.4)) +
        ggplot2::scale_fill_viridis_d(end = 0.75) +
        ggplot2::theme_void() +
        ggplot2::theme(legend.position = "none",
                       plot.title =
                         ggplot2::element_text(hjust=0.5,
                                               vjust = -6,
                                               family = "Cute Font",
                                               size = 30),
                       panel.background = ggplot2::element_rect(fill = "lightsteelblue3")) +
        ggplot2::ggtitle("ShinyDeck")

      ggiraph::girafe(ggobj = p) %>%
        ggiraph::girafe_options(ggiraph::opts_sizing(rescale = TRUE, width = 1),
                                ggiraph::opts_selection(type = "none"),
                                ggiraph::opts_hover(css = ggiraph::girafe_css(css = "fill:#D3F4FB;",
                                                                              text = "fill:black")))
    })
}
