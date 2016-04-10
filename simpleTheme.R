# Simple Theme
# Simple Lattice Theme
MyLatticeFont <- list(font = 1, cex = 1)
MyStripFont <- list(font = 1, cex = 0.8)
MyLatticeStrip = strip.custom(par.strip.text = MyStripFont)
MyLatticeTheme <- list(
  par.main.text = MyLatticeFont
  , par.xlab.text = MyLatticeFont
  , par.ylab.text = MyLatticeFont
  , add.text = MyLatticeFont
  , axis.text = MyLatticeFont
  , fontsize = list(text = 11, points = 7)
  , plot.symbol = list(col = "#44a4ff", pch = 19, alpha = 0.5, cex = 0.75)
  , plot.polygon = list(col = "#44a4ff")
  , superpose.symbol = list(pch = c(20, 18, 8, 13, 12)
                            , col = c("#44a4ff", "#dd7766", "#55cc77"
                                      , "violetred1", "darkblue", "grey40"))
  , box.umbrella = list(col = "black", lty = 2, lwd = 1.25)
  , box.rectangle = list(col = "black", lwd = 1.5)
  , box.dot = list(col = "#44a4ff", pch = 15, cex = 0.8, alpha = 0.5)
  , plot.line = list(col = c("grey40", "darkblue", "violetred1"))
  , add.line = list(col = "grey70", lty = 2)
  , strip.background = list(col="transparent")
  , strip.shingle = list(alpha = 0.2
                         , col = c("#44a4ff", "#dd7766", "#55cc77"))
)