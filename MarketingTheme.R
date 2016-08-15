# a nice colour palette
library(lattice)
library(ggplot2)
myPal <- c("#FC40C5", "#55AA88", "#7FA5F6", "#D0D9EE"
           , "#FF3072", "#4BFF72", "#1B20FF", "#BBBBBB")
myPalDark <- c("#9D4357", "#407753"
               , "#3F2596", "#440000"
               , "#004400", "#000044")
myPalContrasts <- c(myPalDark[1], myPalDark[5], myPal[2], myPal[4]
                    ,"#999999"
                    , myPal[1], myPal[5], myPalDark[2], myPalDark[4])
myPal.range <- colorRampPalette(c("#FFFFFF", myPal[8:1]))
myPal.rangeDark <- colorRampPalette(c("#FFFFFF", myPalDark[3:1]))
myPal.rangeDiv <- colorRampPalette(c(myPal[1], "#FFFFFF", myPal[5]))
myPal.rangeContrasts <- colorRampPalette(c("#FFFFFF", myPalContrasts))

# applied to lattice
MyLatticeFont <- list(font = 1, cex = 1, col = myPalDark[6])

MyLatticeTheme <- list(
  par.main.text = MyLatticeFont
  , par.xlab.text = MyLatticeFont
  , par.ylab.text = MyLatticeFont
  , axis.text = MyLatticeFont
  , fontsize = list(text = 11, points = 7)
  , plot.symbol = list(col = myPalDark[5], pch = 19, alpha = 0.5, cex = 0.75)
  , plot.line = list(col = myPalDark[5], lwd = 2, alpha = 0.75)
  , reference.line = list(col = myPalDark[5], lwd = 2, alpha = 0.75)
  , add.line = list(col = myPal[8], lwd = 1.5, alpha = 0.75, lty = 3)
  , box.umbrella = list(col = myPalDark[5], lty = 2, lwd = 1.25)
  , box.rectangle = list(fill = myPal.range(100)[3], col = myPalDark[5], lwd = 1.5)
  , box.dot = list(col = myPalDark[5], pch = 15, cex = 0.8, alpha = 0.5)
  , superpose.line = list(col = myPalContrasts, lwd = 2)
  , superpose.symbol = list(col = myPalContrasts)
  , axis.line = list(col = myPalDark[6])
  , strip.background = list(col=myPal.range(100)[3])
  , strip.border = list(col = myPalDark[6])
)
MyLatticeStrip = strip.custom(par.strip.text = MyLatticeFont)

MyLatticeScale = list(tck = c(0.25, 0))

# applied to ggplot2
myGgTheme <- theme(plot.title = element_text(colour = myPalDark[6], size = 10)
                   , axis.title = element_text(colour = myPalDark[6], size = 10)
                   , axis.text = element_text(colour = myPalDark[6], size = 10)
                   , axis.line = element_line(colour = myPalDark[6], size = 0.5)
                   , axis.ticks = element_line(colour = myPalDark[6], size = 0.5)
                   , panel.border = element_rect(colour = "transparent")
                   , legend.title = element_text(colour = myPalDark[6])
                   , legend.text = element_text(colour = myPalDark[6]))

myGgFillScale <- scale_fill_manual(values = c(myPal[8], myPal[2]))
myGgColourScale <- scale_colour_manual(values = c(myPal[8], myPal[2]))
myGgColourGradient <- scale_color_gradient(low = myPal[1], high = myPalDark[1])