library(shiny)
library(ggvis)

shinyUI(fluidPage(
  mainPanel(
    uiOutput("ggvis_ui"),
    ggvisOutput("ggvis")
  )
))