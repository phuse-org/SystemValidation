dir.create("/home/val/results", showWarnings = FALSE)
dir.create("/home/val/outputs", showWarnings = FALSE)

home_dirs <- list.dirs(R.home(), recursive = FALSE, full.names = FALSE)

if("tests" %in% home_dirs){
  IQResult <- tools::testInstalledBasic("basic")
  writeLines(as.character(IQResult), con = "results/IQ_log.txt")
  q(status = IQResult)
} else {
  message("Failed to find R installation tests. See the following for more information.")
  message("https://cran.r-project.org/doc/manuals/r-release/R-admin.html#Testing-a-Unix_002dalike-Installation")
  writeLines("1", con = "results/IQ_log.txt")
}