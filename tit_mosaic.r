# svg("R_Themes\\tit_mosaic.svg")
require(vcd)
require(MASS)
llm.tit <- loglm(~Age*Sex*Class+Survived, Titanic)
mosaic(Titanic, expected = as.formula(llm.tit)
       , labeling = FALSE, legend = FALSE)
# dev.off()

