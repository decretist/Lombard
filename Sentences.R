#
# Paul Evans (paul.evans@aya.yale.edu)
# February 2021
#
setwd("~/Work/Lombard")
library(stylo)
#
files.to.analyze <- c("Gratian0.txt", "Gratian1.txt", "Gratian2.txt",
                      "Lombard1.txt", "Lombard2.txt", "Lombard3.txt", "Lombard4.txt")
writeLines(files.to.analyze, "files_to_analyze.txt")
stylo.results = stylo(
  gui = FALSE,
  features = "./wordlists/wordlist_quoteful_0.txt",
  corpus.dir = "./corpora/quoteful",
  corpus.lang = "Latin.corr",
  mfw.min = 65, mfw.max = 65,
  delete.pronouns = TRUE,
  use.custom.list.of.files = TRUE,
  analysis.type = "PCR",
  sampling = "normal.sampling",
  sample.size = 3600,
  write.jpg.file = TRUE,
  custom.graph.filename = "./graphs/Quoteful_0",
  pca.visual.flavour = "symbols",
)
print(stylo.results$features.actually.used)
#
files.to.analyze <- c("Gratian0.txt", "Gratian1.txt", "Gratian2.txt",
                      "Lombard2.txt", "Lombard3.txt", "Lombard4.txt")
writeLines(files.to.analyze, "files_to_analyze.txt")
stylo.results = stylo(
  gui = FALSE,
  features = "./wordlists/wordlist_quoteful_1.txt",
  corpus.dir = "./corpora/quoteful",
  corpus.lang = "Latin.corr",
  mfw.min = 65, mfw.max = 65,
  delete.pronouns = TRUE,
  use.custom.list.of.files = TRUE,
  analysis.type = "PCR",
  sampling = "normal.sampling",
  sample.size = 3600,
  write.jpg.file = TRUE,
  custom.graph.filename = "./graphs/Quoteful_1",
  pca.visual.flavour = "symbols",
)
print(stylo.results$features.actually.used)
#
files.to.analyze <- c("Gratian1.txt", "Gratian2.txt",
                      "Lombard2.txt", "Lombard3.txt", "Lombard4.txt")
writeLines(files.to.analyze, "files_to_analyze.txt")
stylo.results = stylo(
  gui = FALSE,
  features = "./wordlists/wordlist_quoteful_2.txt",
  corpus.dir = "./corpora/quoteful",
  corpus.lang = "Latin.corr",
  mfw.min = 65, mfw.max = 65,
  delete.pronouns = TRUE,
  use.custom.list.of.files = TRUE,
  analysis.type = "PCR",
  sampling = "normal.sampling",
  sample.size = 3600,
  write.jpg.file = TRUE,
  custom.graph.filename = "./graphs/Quoteful_2",
  pca.visual.flavour = "symbols",
)
print(stylo.results$features.actually.used)
#
files.to.analyze <- c("Lombard2.txt", "Lombard3.txt", "Lombard4.txt")
writeLines(files.to.analyze, "files_to_analyze.txt")
stylo.results = stylo(
  gui = FALSE,
  features = "./wordlists/wordlist_quoteful_3.txt",
  corpus.dir = "./corpora/quoteful",
  corpus.lang = "Latin.corr",
  mfw.min = 65, mfw.max = 65,
  delete.pronouns = TRUE,
  use.custom.list.of.files = TRUE,
  analysis.type = "PCR",
  sampling = "normal.sampling",
  sample.size = 3600,
  write.jpg.file = TRUE,
  custom.graph.filename = "./graphs/Quoteful_3",
  pca.visual.flavour = "symbols",
)
print(stylo.results$features.actually.used)
#
# quoteless samples
#
files.to.analyze <- c("Gratian0.txt", "Gratian1.txt", "Gratian2.txt",
                      "Lombard1.txt", "Lombard2.txt", "Lombard3.txt", "Lombard4.txt")
writeLines(files.to.analyze, "files_to_analyze.txt")
stylo.results = stylo(
  gui = FALSE,
  features = "./wordlists/wordlist_quoteless_0.txt",
  corpus.dir = "./corpora/quoteless",
  corpus.lang = "Latin.corr",
  mfw.min = 65, mfw.max = 65,
  delete.pronouns = TRUE,
  use.custom.list.of.files = TRUE,
  analysis.type = "PCR",
  sampling = "normal.sampling",
  sample.size = 3600,
  write.jpg.file = TRUE,
  custom.graph.filename = "./graphs/Quoteless_0",
  pca.visual.flavour = "symbols",
)
print(stylo.results$features.actually.used)
#
files.to.analyze <- c("Gratian0.txt", "Gratian1.txt", "Gratian2.txt",
                      "Lombard2.txt", "Lombard3.txt", "Lombard4.txt")
writeLines(files.to.analyze, "files_to_analyze.txt")
stylo.results = stylo(
  gui = FALSE,
  features = "./wordlists/wordlist_quoteless_1.txt",
  corpus.dir = "./corpora/quoteless",
  corpus.lang = "Latin.corr",
  mfw.min = 65, mfw.max = 65,
  delete.pronouns = TRUE,
  use.custom.list.of.files = TRUE,
  analysis.type = "PCR",
  sampling = "normal.sampling",
  sample.size = 3600,
  write.jpg.file = TRUE,
  custom.graph.filename = "./graphs/Quoteless_1",
  pca.visual.flavour = "symbols",
)
print(stylo.results$features.actually.used)
#
files.to.analyze <- c("Gratian1.txt", "Gratian2.txt",
                      "Lombard2.txt", "Lombard3.txt", "Lombard4.txt")
writeLines(files.to.analyze, "files_to_analyze.txt")
stylo.results = stylo(
  gui = FALSE,
  features = "./wordlists/wordlist_quoteless_2.txt",
  corpus.dir = "./corpora/quoteless",
  corpus.lang = "Latin.corr",
  mfw.min = 65, mfw.max = 65,
  delete.pronouns = TRUE,
  use.custom.list.of.files = TRUE,
  analysis.type = "PCR",
  sampling = "normal.sampling",
  sample.size = 3600,
  write.jpg.file = TRUE,
  custom.graph.filename = "./graphs/Quoteless_2",
  pca.visual.flavour = "symbols",
)
print(stylo.results$features.actually.used)
#
files.to.analyze <- c("Lombard2.txt", "Lombard3.txt", "Lombard4.txt")
writeLines(files.to.analyze, "files_to_analyze.txt")
stylo.results = stylo(
  gui = FALSE,
  features = "./wordlists/wordlist_quoteless_3.txt",
  corpus.dir = "./corpora/quoteless",
  corpus.lang = "Latin.corr",
  mfw.min = 65, mfw.max = 65,
  delete.pronouns = TRUE,
  use.custom.list.of.files = TRUE,
  analysis.type = "PCR",
  sampling = "normal.sampling",
  sample.size = 3600,
  write.jpg.file = TRUE,
  custom.graph.filename = "./graphs/Quoteless_3",
  pca.visual.flavour = "symbols",
)
print(stylo.results$features.actually.used)
