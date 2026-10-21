## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
library(zufast)

## -----------------------------------------------------------------------------
fast_info()[c("version", "vendored")]

## -----------------------------------------------------------------------------
x <- "0.799012"
fast_parse_double(x) == as.numeric(x)
sprintf("%a", c(zufast = fast_parse_double(x), base = as.numeric(x)))

## -----------------------------------------------------------------------------
x <- c(0.1 + 0.2, 0.3, 1e21, 1e-7, 1 / 3)
data.frame(zufast = fast_format_double(x), base = as.character(x))
identical(fast_parse_double(fast_format_double(x)), x)

