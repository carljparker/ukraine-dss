
mil.aid <- 40
russo.trade <- 28
eco.trade <- 3.7

png( "viz/ukraine-4v40b.png",
      width = 1000, height = 750,
      units = "px", pointsize = 16,
      bg = rgb( 248, 245, 236, maxColorValue = 255 )
)

par(
    cex.main = 1.75, cex.axis = 1.10, cex.lab = 1.25,
    # margins: bottom, left, top and right
    par( mar = c( 6, 7, 4, 4 ) + 0.1 )
)

x <- barplot(
        c( mil.aid, eco.trade ),  names = c( "Military Aid", "Economic Trade"),
        main = "Comparison of Military Aid and Economic Trade",
        ylim = c( 0, 50 ), xlab="", ylab="",
        col = c( "blue", "yellow" )
)

title( xlab="Ukraine", cex.lab = 2, line = 3 )
title( ylab="Value in billions", cex.lab = 2, line = 3 )

dev.off()

#
# We need to reconfigure values for png and par. Otherwise, the
# previously configured values (from above) continue to prevail.
#
png( "viz/ukraine-4v40b-tumblr.png",
      width = 500, height = 375,
      units = "px", pointsize = 9,
      bg = rgb( 248, 245, 236, maxColorValue = 255 )
)

par(
    cex.main = 1.5, cex.axis = 1, cex.lab = 1,
    # margins: bottom, left, top and right
    par( mar = c( 4, 4, 4, 4 ) + 0.1 )
)

x <- barplot(
        c( mil.aid, eco.trade ),  names = c( "Military Aid", "Economic Trade"),
        main = "Comparison of Trade Aid and Economic Trade",
        ylim = c( 0, 50 ), xlab="", ylab="",
        col = c( "blue", "yellow" )
)

title( xlab="Ukraine", cex.lab = 1.5, line = 2 )
title( ylab="Value in billions", cex.lab = 1.5, line = 2 )

#
##############################################################
#

png( "viz/russo-ukraine.png",
      width = 1000, height = 750,
      units = "px", pointsize = 16,
      bg = rgb( 248, 245, 236, maxColorValue = 255 )
)

par(
    cex.main = 1.75, cex.axis = 1.10, cex.lab = 1.25,
    # margins: bottom, left, top and right
    par( mar = c( 6, 7, 4, 4 ) + 0.1 )
)

x <- barplot(
        c( russo.trade, eco.trade ),  names = c( "Russia", "Ukraine"),
        main = "Compare the value of US trade relationships",
        ylim = c( 0, 30 ), xlab="", ylab="",
        col = c( "red", "yellow" )
)

title( xlab="Trade Relationship", cex.lab = 2, line = 3 )
title( ylab="Value in billions", cex.lab = 2, line = 3 )

dev.off()


#
##############################################################
#


#
# We need to reconfigure values for png and par. Otherwise, the
# previously configured values (from above) continue to prevail.
#
png( "viz/russo-ukraine-tumblr.png",
      width = 500, height = 375,
      units = "px", pointsize = 9,
      bg = rgb( 248, 245, 236, maxColorValue = 255 )
)

par(
    cex.main = 1.5, cex.axis = 1, cex.lab = 1,
    # margins: bottom, left, top and right
    par( mar = c( 4, 4, 4, 4 ) + 0.1 )
)

x <- barplot(
        c( russo.trade, eco.trade ),  names = c( "Russia", "Ukraine"),
        main = "Compare the value of US trade relationships",
        ylim = c( 0, 30 ), xlab="", ylab="",
        col = c( "red", "yellow" )
)

title( xlab="Trade Relationship", cex.lab = 1.5, line = 2 )
title( ylab="Value in billions", cex.lab = 1.5, line = 2 )

dev.off()


#
##############################################################
#

tai.trade       <- 90.6
eu.mean.trade   <- round( 40.7404 )

png( "viz/eu-ukraine.png",
      width = 1000, height = 750,
      units = "px", pointsize = 16,
      bg = rgb( 248, 245, 236, maxColorValue = 255 )
)

par(
    cex.main = 1.75, cex.axis = 1.10, cex.lab = 1.25,
    # margins: bottom, left, top and right
    par( mar = c( 6, 7, 4, 4 ) + 0.1 )
)

x <- barplot(
        c( eu.mean.trade, russo.trade, eco.trade ),
        names = c( "EU (mean)", "Russia", "Ukraine"),
        main = "Compare the value of US trade relationships",
        ylim = c( 0, 50 ), xlab="", ylab="",
        col = c( "blue", "red", "yellow" )
)

title( xlab="Trade Relationship", cex.lab = 2, line = 3 )
title( ylab="Value in billions", cex.lab = 2, line = 3 )

dev.off()


#
##############################################################
#


#
# We need to reconfigure values for png and par. Otherwise, the
# previously configured values (from above) continue to prevail.
#
png( "viz/eu-ukraine-tumblr.png",
      width = 500, height = 375,
      units = "px", pointsize = 9,
      bg = rgb( 248, 245, 236, maxColorValue = 255 )
)

par(
    cex.main = 1.5, cex.axis = 1, cex.lab = 1,
    # margins: bottom, left, top and right
    par( mar = c( 4, 4, 4, 4 ) + 0.1 )
)

x <- barplot(
        c( eu.mean.trade, russo.trade, eco.trade ),
        names = c( "EU (mean)", "Russia", "Ukraine"),
        main = "Compare the value of US trade relationships",
        ylim = c( 0, 50 ), xlab="", ylab="",
        col = c( "blue", "red", "yellow" )
)

trade.volume <- c( eu.mean.trade, russo.trade, eco.trade )
trade.volume.deco <- paste( "$", trade.volume, "B", sep = '' )
y.loc <- trade.volume + 2
#
# The `text()` . . . procedure(?) . . . wants vectors for its first
# three parameters.
#
text( x, y.loc, trade.volume.deco )

title( xlab="Trade Relationship", cex.lab = 1.5, line = 2.5 )
title( ylab="Value in billions", cex.lab = 1.5, line = 2 )

dev.off()


# --- END --- #

