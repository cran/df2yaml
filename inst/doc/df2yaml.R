## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  dpi=60
)

## ----install, eval=FALSE------------------------------------------------------
#  # install via CRAN
#  install.package("df2yaml")
#  # install via Github
#  # install.package("remotes")   #In case you have not installed it.
#  remotes::install_github("showteeth/df2yaml")

## ----library, message=FALSE, warning=FALSE------------------------------------
library(df2yaml)

## ----level_3_load-------------------------------------------------------------
# library
library(df2yaml)
# load test file
test_file <- system.file("extdata", "df2yaml_l3.txt", package = "df2yaml")
test_data = read.table(file = test_file, header = T, sep = "\t")
head(test_data)
# output yaml string
yaml_res = df2yaml(df = test_data, key_col = c("paras", "subcmd"), val_col = "values")
cat(yaml_res)

## ----level_3_convert----------------------------------------------------------
yaml_res = df2yaml(df = test_data, key_col = c("paras", "subcmd"), val_col = "values")
cat(yaml_res)

## ----session------------------------------------------------------------------
sessionInfo()

