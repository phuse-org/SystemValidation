test_installed_packages <- function() {
  ips <- installed.packages()
  
  save(ips, file = "outputs/ips")
  
  ips2 <- ips[is.na(ips[,"Priority"]), "Package"]
  
  df <- data.frame()
  
  for(i in seq_along(ips2)){
    pack <- ips2[i]
    
    testDir <- paste0("outputs/", pack)
    resDir <- paste0("results/", pack)
    dir.create(testDir, recursive = TRUE, showWarnings = FALSE)
    dir.create(resDir, showWarnings = FALSE)
    pack_examples <- NULL
    pack_tests <- NULL
    pack_vignettes <- NULL
    
    try(pack_examples <- as.character(tools::testInstalledPackage(pack, outDir = testDir, types = "examples")), outFile = paste0(resDir, "/examples.txt"))
    writeLines(ifelse(is.null(pack_examples), "1", pack_examples), con = paste0(testDir, "/examples.txt"))
    
    try(pack_tests <- as.character(tools::testInstalledPackage(pack, outDir = testDir, types = "tests")), outFile = paste0(resDir, "/tests.txt"))
    writeLines(ifelse(is.null(pack_tests), "1", pack_tests), con = paste0(testDir, "/tests.txt"))
    
    try(pack_vignettes <-as.character(tools::testInstalledPackage(pack, outDir = testDir, types = "vignettes")), outFile = paste0(resDir, "/vignettes.txt"))
    writeLines(ifelse(is.null(pack_vignettes), "1", pack_vignettes), con = paste0(testDir, "/vignettes.txt"))

    
  }

}

test_installed_packages()