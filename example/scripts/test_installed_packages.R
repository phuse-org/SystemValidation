test_installed_packages <- function() {
  ips <- installed.packages()
  
  save(ips, file = "/home/val/outputs/ips")
  
  ips2 <- ips[is.na(ips[,"Priority"]), "Package"]
  
  df <- data.frame()
  
  for(i in seq_along(ips2)){
    pack <- ips2[i]
    
    testDir <- paste0("outputs/", pack)
    resDir <- paste0("results/", pack)
    dir.create(testDir, recursive = TRUE, showWarnings = FALSE)
    dir.create(resDir, showWarnings = FALSE)
    
    try(writeLines(as.character(tools::testInstalledPackage(pack, outDir = testDir, types = "examples")), con = paste0(resDir, "/examples.txt")), outFile = paste0(testDir, "/examples.txt"))
    
    try(writeLines(as.character(tools::testInstalledPackage(pack, outDir = testDir, types = "tests")), con = paste0(resDir, "/tests.txt")), outFile = paste0(testDir, "/tests.txt"))
    
    try(writeLines(as.character(tools::testInstalledPackage(pack, outDir = testDir, types = "vignettes")), con = paste0(resDir, "/vignettes.txt")), outFile = paste0(testDir, "/vignettes.txt"))
    

    
  }

}

test_installed_packages()