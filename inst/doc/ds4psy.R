## ----preamble_ds4psy, include = FALSE-----------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----install_CRAN, echo = TRUE, eval = FALSE----------------------------------
# install.packages('ds4psy')  # install ds4psy from CRAN client
# library('ds4psy')           # load to use the package

## ----install_github, echo = TRUE, eval = FALSE--------------------------------
# # install.packages('devtools')  # (if not installed yet)
# devtools::install_github('hneth/ds4psy')
# library('ds4psy')  # load to use the package

## ----pkg-citation, echo = TRUE, eval = FALSE, comment = "", highlight = FALSE----
# @Manual{ds4psy,
#   title = {ds4psy: Data Science for Psychologists},
#   author = {Hansjörg Neth},
#   year = {2025},
#   organization = {Social Psychology and Decision Sciences, University of Konstanz},
#   address = {Konstanz, Germany},
#   note = {R package (version 1.2.0, November 5, 2025); Textbook at <https://bookdown.org/hneth/ds4psy/>.},
#   url = {https://CRAN.R-project.org/package=ds4psy},
#   doi = {10.5281/zenodo.7229812}
# }

