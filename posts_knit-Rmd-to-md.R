myjekyllsite = c("http://bateyt.github.io/dominica/")

KnitPost <- function(input, base.url = myjekyllsite) {
  require(knitr)
  opts_knit$set(base.url = base.url)
  fig.path <- paste0("figs/", sub(".Rmd$", "", basename(input)), "/")
  opts_chunk$set(fig.path = fig.path)
  opts_chunk$set(fig.cap = "center")
  render_jekyll(highlight = "pygments")
  knit(input, envir = parent.frame())
}

# be sure to edit file name for the original RMarkdown file
KnitPost("~/GitHub/dominica/Rmd_temp/2014-10-30-explore-dnica.Rmd")
