library(ggplot2) 
library(grid) 
library(gridExtra)

SoilIsotopes <- read.table("~/Desktop/Alaska Data/EA-IRMS/170517_EA-IRMS_MASTERSPREADSHEET.txt",sep = ' ',header=TRUE)

EAIRMS <- read.csv("~/Desktop/Alaska Data/EA-IRMS/170517_EA-IRMS_MASTERSPREADSHEET.csv")

a <- ggplot(data = EAIRMS, aes(x = Corrected.d15N, y = Corrected.d13C))
a + geom_point(color = "cyan", shape = 17, size = 3) + coord_cartesian() + theme_classic() + ggtitle("Alaska Soils") + ylab("d13C") + stat_smooth(method = "lm")