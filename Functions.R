Tree <- function(height) {
  # generate relative ratio of Tree geometry from smallest whole number input set
  # and return coordinate matrix transformed by height parameter
  return(height*cbind(x= c(0,  2, -2,  2, -2,  0,  2, -2,  0,  0),
                      y= c(8,  7,  7,  5,  5,  4,  3,  3,  2,  0))/8)
}

Pythagorean <- function(piece, height) {
  # determine lengths of input as triangle
  a <- Tree(height)[piece[1],1]-Tree(height)[piece[2],1]
  b <- Tree(height)[piece[1],2]-Tree(height)[piece[2],2]
  # return hypotenuse
  return(c= sqrt(a^2+b^2))
}

Pieces <- function() {
  return(list(v1= c(1,10), v2= c(2,7),  v3= c(3,8),
              h1= c(2,3),  h2= c(4,5),  h3= c(7,8),
              k1= c(1,2),  k2= c(1,3),  t1= c(2,6),  t2= c(3,6),
              t3= c(4,6),  t4= c(5,6),  t5= c(6,7),  t6= c(6,8),
              y1= c(7,9),  y2= c(8,9),  m1= c(7,10), m2= c(8,10)))
}

PlotTree <- function(height, s.diameter= 0, l.width= 1, grid= T, y.lim= c(0, height*1.066667)) {
  # initialize plot
  plot(Tree(height), type='n', ylim = y.lim, asp= 1)
  # add grid to plot
  if(grid) abline(h=-1:16, v=-7:7)
  # plot lines for Path frame
  lapply(1:length(Pieces()), function(i) lines(x= Tree(height)[Pieces()[[i]],1], y= Tree(height)[Pieces()[[i]],2], lwd= l.width))  
  # plot Sephiroth
  if(s.diameter!=0) lapply(1:10, function(i) symbols(x= Tree(height)[i,1], y= Tree(height)[i,2], circles= s.diameter/2, add= T, inches= F, bg= 0))
  return()
}