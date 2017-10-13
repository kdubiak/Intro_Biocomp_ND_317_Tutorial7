library(ggplot2) 
library(grid) 
library(gridExtra)
Data <- read.csv("~/Desktop/data-shell/Intro_Biocomp_ND_317_Tutorial7/data.txt",sep = ',',header=TRUE)
##This script can be executed to produce a bar graph of populations from the regions in the data.txt file
a = ggplot(data = Data)
a + geom_bar(aes(x = as.factor(region), y = observations), stat = "summary",
             fun.y = "mean", fill = "black", color = "black") + theme_classic() + xlab("Regions") + ylab("Population")
##This script can be executed to produce a scatterplot of the popualtions from the regions in the data.txt file.
b = ggplot(data = Data, aes(x = region, y = observations)) + theme_classic()
b + geom_point() + geom_jitter()+ xlab("Regions") + ylab("Population")