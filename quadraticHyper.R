# svg("C:\\Dev\\Study\\R\\R_Themes\\quadraticHyper.svg")
sep.plane3 <- function(x_1, x_2) {
  c <- (1 + x_1)^2 + (2 - x_2)^2
  if (c == 4) return(myPalContrasts[2])
  if (c > 4) return(myPalContrasts[3])
  if (c < 4) return(myPalContrasts[4])
}

x1 <- seq(-5, 5, 1)
x2 <- x1
myGrid <- expand.grid(x1 = x1, x2 = x2)

sp3 <- mapply(sep.plane3, myGrid[,1], myGrid[,2])
xyplot(x2~x1, myGrid, pch = 19, col = sp3, cex = 4.5
       , scales = list(draw = FALSE)
       , xlab = NULL, ylab = NULL
       , par.settings = list(
         axis.line = list(col = "transparent")))

# dev.off()