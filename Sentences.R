# Paul Evans (paul.evans@aya.yale.edu)
# February 2021
setwd("~/Work/Lombard")
library(stylo)
stylo.results = stylo(
  gui = TRUE,
  corpus.lang = "Latin.corr",
  mfw.min = 65, mfw.max = 65,
  delete.pronouns = TRUE,
  analysis.type = "PCR",
  sampling = "normal.sampling",
  sample.size = 3000,
)