### R code from vignette source '/usr/local/lib/R/library/utils/Sweave/example-1.Rnw'

###################################################
### code chunk number 1: example-1.Rnw:13-16
###################################################
data(airquality, package="datasets")
library("stats")
kruskal.test(Ozone ~ Month, data = airquality)


###################################################
### code chunk number 2: boxp (eval = FALSE)
###################################################
## boxplot(Ozone ~ Month, data = airquality)


###################################################
### code chunk number 3: example-1.Rnw:27-29
###################################################
library("graphics")
boxplot(Ozone ~ Month, data = airquality)


