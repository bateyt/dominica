shinyServer(function(input, output) {

  dnica %>% 
    ggvis(~age) %>%
    layer_histograms() %>%
    bind_shiny("ggvis", "ggvis_ui")
  
  })