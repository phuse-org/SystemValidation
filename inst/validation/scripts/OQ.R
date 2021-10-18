dir.create("outputs/base", recursive = TRUE, showWarnings = FALSE)
tryCatch({
  examplesResult <- tools::testInstalledPackages(outDir = "outputs/base", errorsAreFatal = FALSE, types = "examples")
}, error = function(e){
  examplesResult <- 1
})
tryCatch({
  vignettesResult <- tools::testInstalledPackages(outDir = "outputs/base", errorsAreFatal = FALSE, types = "vignettes")
}, error = function(e){
  vignettesResult <- 1
})
tryCatch({
  testResult <- tools::testInstalledPackages(outDir = "outputs/base", errorsAreFatal = FALSE, types = "tests")
}, error = function(e){
  testResult <- 1
})
writeLines(as.character(examplesResult), con = "results/examplesResult.txt")
writeLines(as.character(vignettesResult), con = "results/vignettesResult.txt")
writeLines(as.character(testResult), con = "results/testResult.txt")
