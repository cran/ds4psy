## ----preamble-ds4psy, include = FALSE-----------------------------------------
# Default chunk options:
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

# Some URLs (from ds4psy ebook): ----

# Posit connect cloud hosting:
url_posit_hneth <- "https://connect.posit.cloud/hneth/"

# (1) ds4psy: ------ 
url_ds4psy_book_old <- "https://bookdown.org/hneth/ds4psy/" # moved to:
url_ds4psy_book     <- "https://hneth-ds4psy.share.connect.posit.cloud/"
url_ds4psy_cran     <- "https://CRAN.R-project.org/package=ds4psy"

# (2) i2ds: ------ 
url_i2ds_book_old <- "https://bookdown.org/hneth/i2ds/" # moved to:
url_i2ds_book     <- "https://hneth-i2ds.share.connect.posit.cloud/"

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
#   year = {2026},
#   organization = {Social Psychology and Decision Sciences, University of Konstanz},
#   address = {Konstanz, Germany},
#   note = {R package (version 1.3.0, April 22, 2026); Textbook at <https://hneth-ds4psy.share.connect.posit.cloud/>.},
#   url = {https://CRAN.R-project.org/package=ds4psy},
#   doi = {10.5281/zenodo.7229812}
# }

