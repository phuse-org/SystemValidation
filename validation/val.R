#!/bin/bash

# R -e 'file_test("scripts/IQ.R")'
# R -e 'file_test("scripts/OQ.R")'
# R -e 'file_test("scripts/test_installed_packages.R")'

  
CMD1 <- paste(shQuote(file.path(R.home("bin"), "R")), 
            "CMD BATCH --vanilla --no-timing", "scripts/IQ.R", "outputs/IQ_log.txt")
CMD2 <- paste(shQuote(file.path(R.home("bin"), "R")), 
            "CMD BATCH --vanilla --no-timing", "scripts/OQ.R", "outputs/OQ_log.txt")
CMD3 <- paste(shQuote(file.path(R.home("bin"), "R")), 
            "CMD BATCH --vanilla --no-timing", "scripts/test_installed_packages.R", "outputs/install_log.txt")
try(system(CMD1))
try(system(CMD2))
try(system(CMD3))