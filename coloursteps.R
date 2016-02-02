source("https://raw.githubusercontent.com/julianhatwell/R_Themes/master/myFirstTheme.R")
#svg("colourSteps.svg")
xyplot(1:10~1:10
       , panel = function(...) {
         colorSweep = myPal.rangeContrasts(100)
         for(i in 10:1) {
            panel.xyplot(i, 1:(0+i)
                         , pch = 15
                         , cex = 7.758
                         , alpha = i/11
                          , col = colorSweep[i+2]
                         )
         }
       for(i in 10:1) {
         panel.xyplot(i, 1:(0+i)
                      , pch = 15
                      , cex = 5
                      , alpha = 1/(i+0.25)
                      , col = colorSweep[i+20]
         )
       }
       for(i in 10:1) {
         panel.xyplot(i, 1:(0+i)
                      , pch = 15
                      , cex = 2.5
                      , alpha = i/10
                      , col = colorSweep[i+60]
         )
       }
       for(i in 10:1) {
         panel.xyplot(i, 1:(0+i)
                      , pch = 15
                      , cex = 1.5
                      , alpha = 4/5
                      , col = colorSweep[i+70]
         )
       }
       for(i in 10:1) {
         panel.xyplot(i, 1:(0+i)
                      , pch = 15
                      , alpha = 1/(i+0.1)
                      , col = colorSweep[i+40]
         )
       }
       }
       , scales = list(draw = FALSE)
       , xlab = NULL, ylab = NULL
       , par.settings = list(axis.line = list(col = "transparent")))
#dev.off()