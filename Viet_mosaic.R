data("Vietnam", package = "vcdExtra")
mosaic(aperm(Viet.tab, c(1,3,2))
       , expected = ~ response * sex + year * sex
       , rot_labels = c(0,0,0,0)
       , shade = TRUE
       , labeling = FALSE
       , legend = FALSE
)