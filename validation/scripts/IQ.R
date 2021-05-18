dir.create("/home/val/results", showWarnings = FALSE)
dir.create("/home/val/outputs", showWarnings = FALSE)

IQResult <- tools::testInstalledBasic("basic")
writeLines(as.character(IQResult), con = "results/IQ_log.txt")
q(status = IQResult)