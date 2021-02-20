# Paul Evans (paul.evans@aya.yale.edu)
# February 2021
setwd("~/Work/Lombard")
library(stylo)
files.to.analyze <- c("Gratian0.txt", "Gratian1.txt", "Gratian2.txt",
                      "Lombard2.txt", "Lombard3.txt", "Lombard4.txt")
writeLines(files.to.analyze, "files_to_analyze.txt")
stylo.results = stylo(
  gui = FALSE,
  features = "wordlist_quoteful_1.txt",
  corpus.dir = "./corpora/quoteful",
  corpus.lang = "Latin.corr",
  mfw.min = 65, mfw.max = 65,
  delete.pronouns = TRUE,
  use.existing.wordlist = TRUE,
  use.custom.list.of.files = TRUE,
  analysis.type = "PCR",
  sampling = "normal.sampling",
  sample.size = 3600,
  pca.visual.flavour = "symbols",
)
print(stylo.results$features.actually.used)
