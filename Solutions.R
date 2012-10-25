rm(list=ls())
source("D:/Work/Code/Orchard Path/Functions.r")

# old and new (maybe) dimensions, respectively
cbind(old= Tree(12),
      new= Tree(15))

# plot old and new (maybe) Trees on same axis
PlotTree(12*12, 17, h.2= 15*12)
PlotTree(12*12, 23, h.2= 15*12)

PlotTree(12, 23/12, l.width=16, y.lim=c(0,16))
PlotTree(13, 23/12, l.width=16, y.lim=c(0,16))
PlotTree(14, 23/12, l.width=16, y.lim=c(0,16))

PlotTree(15, 23/12, l.width=16, y.lim=c(0,16))
PlotTree(15, l.width=16)

# matched l.width to 3.5" post
abline(v=c(-(1/12)*1.75, (1/12)*1.75))

# determine lengths between points
lapply(Pieces(), function(x) {paste(x, Pythagorean(x, 14))})

#### Problems remaining to be solved
# ACCOUNT FOR DEPTH??
# find angles of cuts

PlotTree(2*12, 3.5, 6, F)