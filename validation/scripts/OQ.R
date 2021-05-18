dir.create("/home/val/outputs/base", recursive = TRUE, showWarnings = FALSE)
dir.create("/home/val/results", showWarnings = FALSE)
tryCatch({
  examplesResult <- tools::testInstalledPackages(outDir = "/home/val/outputs/base", errorsAreFatal = FALSE, types = "examples")
}, error = function(e){
  examplesResult <- 1
})
tryCatch({
  vignettesResult <- tools::testInstalledPackages(outDir = "/home/val/outputs/base", errorsAreFatal = FALSE, types = "vignettes")
}, error = function(e){
  vignettesResult <- 1
})
tryCatch({
  testResult <- tools::testInstalledPackages(outDir = "/home/val/outputs/base", errorsAreFatal = FALSE, types = "tests")
}, error = function(e){
  testResult <- 1
})
writeLines(as.character(examplesResult), con = "/home/val/results/examplesResult.txt")
writeLines(as.character(vignettesResult), con = "/home/val/results/vignettesResult.txt")
writeLines(as.character(testResult), con = "/home/val/results/testResult.txt")
