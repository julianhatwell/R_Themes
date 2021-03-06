# a nice colour palette
library(lattice)
library(ggplot2)
myPal <- c("#1B20FF", "#4B72FF"
           , "#7FA5F6", "#D0D9EE"
           , "#999999", "#5588AA"
           , "#7230FF", "#C540FC")
myPalDark <- c("#3333FF", "#3333AF"
               , "#67539D", "#405377"
               , "#101088", "#000033")
myPalContrasts <- c(myPal[2], myPalDark[5]
                    , "#CCCCCC"
                    , myPalDark[1], myPal[4]
                    ,"#555555"
                    , myPal[1], myPal[5], myPalDark[2], myPalDark[4])
myPal.range <- colorRampPalette(c(myPal[4], myPalDark[2]))
myPal.rangeDark <- colorRampPalette(c("#FFFFFF", myPalDark[3:1]))
myPal.rangeDiv <- colorRampPalette(c(myPal[1], "#FFFFFF", myPal[5]))
myPal.rangeContrasts <- colorRampPalette(c("#FFFFFF", myPalContrasts))

# applied to lattice
MyLatticeFont <- list(font = 1, cex = 1, col = myPalDark[6])

MyLatticeTheme <- list(
  par.main.text = MyLatticeFont
  , par.sub.text = MyLatticeFont
  , par.xlab.text = MyLatticeFont
  , par.ylab.text = MyLatticeFont
  , axis.text = MyLatticeFont
  , fontsize = list(text = 11, points = 7)
  , plot.symbol = list(col = myPalDark[5], pch = 19, alpha = 0.5, cex = 1.5)
  , plot.line = list(col = myPalDark[5], lwd = 2, alpha = 0.75)
  , reference.line = list(col = myPalDark[5], lwd = 2, alpha = 0.75)
  , add.line = list(col = myPal[8], lwd = 1.5, alpha = 0.75, lty = 3)
  , box.umbrella = list(col = myPalDark[5], lty = 2, lwd = 1.25)
  , box.rectangle = list(fill = myPal.range(100)[3], col = myPalDark[5], lwd = 1.5)
  , box.dot = list(col = myPalDark[5], pch = 15, cex = 1, alpha = 0.5)
  , superpose.line = list(col = myPal, lwd = 2)
  , superpose.symbol = list(col = myPalContrasts, pch = 19, cex = 1.5)
  , superpose.polygon = list(col = myPalContrasts)
  , axis.line = list(col = myPalDark[6])
  , strip.background = list(col=myPal.range(100)[3])
  , strip.border = list(col = myPalDark[6])
)
MyLatticeStrip = strip.custom(par.strip.text = MyLatticeFont)

MyLatticeScale = list(tck = c(0.25, 0))

# applied to ggplot2
myGgTheme <- theme(plot.title = element_text(colour = myPalDark[6], size = 14)
                   , axis.title = element_text(colour = myPalDark[6], size = 12)
                   , axis.text = element_text(colour = myPalDark[6], size = 10)
                   , axis.line = element_line(colour = myPalDark[6], size = 0.5)
                   , axis.ticks = element_line(colour = myPalDark[6], size = 0.5)
                   , panel.border = element_rect(colour = "transparent")
                   , strip.background = element_rect(colour = "transparent"
                                                     , fill = myPal[4])
                   , legend.title = element_text(colour = myPalDark[6])
                   , legend.text = element_text(colour = myPalDark[6]))

myGgFillScale <- scale_fill_manual(values = c(myPal[8], myPal[2]))
myGgColourScale <- scale_colour_manual(values = c(myPal[8], myPal[2]))
myGgPinkGradient <- scale_color_gradient(low = myPal[1], high = myPalDark[1])
myGgSeaGradient <- scale_color_gradient(low = myPal[2], high = myPalDark[2])
myGgSapphireGradient <- scale_color_gradient(low = myPal[3], high = myPalDark[3])
myGgHeatGradient <- scale_color_gradient2(low = myPal[3]
                                              , mid = myPal[2]
                                              , high = myPalDark[1]
                                              , midpoint = 3000)
