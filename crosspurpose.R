source("https://raw.githubusercontent.com/julianhatwell/R_Themes/master/myFirstTheme.R")
#svg("R_Themes\\crossPurpose.svg")
m <- matrix(1:50, 100, 100)
levelplot(m
          , panel = function(x, y, z, ...) {
            panel.levelplot(x, y, z, ...)
            #panel.rect(20.5,0,80.5,100.5, col = myPal.rangeContrasts(2)[1], border = "transparent")
            panel.rect(seq(0,90,10), 0, seq(10,101,10),c(5,15,25,35,45,45,35,25,15,5)
                       , col = myPal.rangeContrasts(12)[2:12], border = "transparent")
            panel.rect(seq(12.5,82.5,10), 0, seq(17.5,87.5,10), c(15, 25, 35, 45, 45, 35, 25, 15)
                       , col = myPal.rangeContrasts(14)[c(12,7,10,5,6,8,11,13)], border = "transparent")
            panel.rect(seq(2.5, 42.5, 5), seq(95.5, 55.5, -5), 50.5, seq(100.5, 60.5, -5)
                       , col = myPal.rangeContrasts(15)[c(10,2,3,4,5,6,7,8)], border = "transparent")
            panel.rect(50.5, seq(95.5, 55.5, -5), seq(97.5, 57.5, -5), seq(100.5, 60.5, -5)
                       , col = myPal.rangeContrasts(14)[c(14,13,12,11,10,9,8,7)], border = "transparent")
            
            panel.polygon(x=c(40.5,60,50.5), y=c(65.5, 65.5, 70.5)
                          , col = myPal.rangeContrasts(14)[3], border = "transparent", alpha = 0.3)
            panel.polygon(x=c(35.5,65,50.5), y=c(70.5, 70.5, 75.5)
                          , col = myPal.rangeContrasts(14)[3], border = "transparent", alpha = 0.3)
            panel.polygon(x=c(30.5,70,50.5), y=c(75.5, 75.5, 80.5)
                          , col = myPal.rangeContrasts(14)[3], border = "transparent", alpha = 0.3)
            panel.polygon(x=c(25.5,75,50.5), y=c(80.5, 80.5, 85.5)
                          , col = myPal.rangeContrasts(14)[10], border = "transparent", alpha = 0.3)
            panel.polygon(x=c(20.5,80,50.5), y=c(85.5, 85.5, 90.5)
                          , col = myPal.rangeContrasts(14)[10], border = "transparent", alpha = 0.3)
            panel.polygon(x=c(15.5,85,50.5), y=c(90.5, 90.5, 95.5)
                          , col = myPal.rangeContrasts(14)[11], border = "transparent", alpha = 0.3)
            panel.polygon(x=c(10.5,90,50.5), y=c(95.5, 95.5, 100.5)
                          , col = myPal.rangeContrasts(14)[5], border = "transparent", alpha = 0.3)
            
            
            panel.points(50.5,59, pch = 19, cex = 10, col = myPalContrasts[5])
            panel.points(43,50, pch = 19, cex = 10, col = myPalContrasts[4])
            panel.points(58,50, pch = 19, cex = 10, col = myPalContrasts[6])
            panel.xyplot(x = rep(1:100, 2), y = c(1:100, 100:1)
                         , col = myPal.rangeContrasts(100)
                         , pch = 16
                         , cex = 9)
            
            }
          , col.regions = myPal.rangeContrasts(1000)[5:995]
          , alpha.regions = 1:10
          , colorkey = FALSE
          , pretty = TRUE
       , scales = list(draw = FALSE)
       , xlab = NULL, ylab = NULL
       , par.settings = list(axis.line = list(col = "transparent")))
#dev.off()

