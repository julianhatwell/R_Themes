source("https://raw.githubusercontent.com/julianhatwell/R_Themes/master/myFirstTheme.R")
#svg("squaretiful.svg")
xyplot(1~1
       , panel = function(x, y, ...) {
          colorSweep = myPal.rangeContrasts(100)
          for(i in 52:1) {
            panel.xyplot(x, y
            , cex = i, pch = 15
            , col = colorSweep[125-i]
            , ...)
          }
          for(i in 29:1) {
            panel.xyplot(x, y
           , cex = i, pch = 12
           , col = colorSweep[100-i]
           , ...)
          }
       }
       , scales = list(draw = FALSE)
       , xlab = NULL, ylab = NULL
       , par.settings = list(axis.line = list(col = "transparent")))
#dev.off()
