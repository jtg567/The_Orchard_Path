# code for building tree paths individually 
h <- 14
pieces <- Pieces()
#pieces[[1]] <- c(-2, 16)
tree <- Tree(h)
y.off <- .5
tree[,2] <- tree[,2] + y.off

plot(tree, type='n', ylim = c(-2, 16), asp= 1)
abline(h=-3:17, v=-8:8, col= 'gray80')

lapply(1:10, function(i) symbols(x= tree[i,1], y= tree[i,2], circles= (23/12)/2, add= T, inches= F, bg= 0))

lines(x= tree[pieces[[7]],1], y= tree[pieces[[7]],2], lwd= 15, col='gray50', lend=1)
lines(x= tree[pieces[[8]],1], y= tree[pieces[[8]],2], lwd= 15, col='gray50', lend=1)
lines(x= tree[pieces[[9]],1], y= tree[pieces[[9]],2], lwd= 15, col='gray50', lend=1)
lines(x= tree[pieces[[10]],1], y= tree[pieces[[10]],2], lwd= 15, col='gray50', lend=1)
lines(x= tree[pieces[[11]],1], y= tree[pieces[[11]],2], lwd= 15, col='gray50', lend=1)
lines(x= tree[pieces[[12]],1], y= tree[pieces[[12]],2], lwd= 15, col='gray50', lend=1)
lines(x= tree[pieces[[13]],1], y= tree[pieces[[13]],2], lwd= 15, col='gray50', lend=1)
lines(x= tree[pieces[[14]],1], y= tree[pieces[[14]],2], lwd= 15, col='gray50', lend=1)
lines(x= tree[pieces[[15]],1], y= tree[pieces[[15]],2], lwd= 15, col='gray50', lend=1)
lines(x= tree[pieces[[16]],1], y= tree[pieces[[16]],2], lwd= 15, col='gray50', lend=1)
lines(x= tree[pieces[[17]],1], y= tree[pieces[[17]],2], lwd= 15, col='gray50', lend=1)
lines(x= tree[pieces[[18]],1], y= tree[pieces[[18]],2], lwd= 15, col='gray50', lend=1)

const <- 0.145833333

lines(x= tree[pieces[[1]],1], y= c(tree[pieces[[1]],2][1] + (11 / 12), tree[pieces[[1]],2][2] - (2+y.off)), lwd= 15, lend= 1, lend=1)
lines(x= tree[pieces[[2]],1], y= c(tree[pieces[[2]],2][1] + const, tree[pieces[[2]],2][2] - const), lwd= 15, lend= 1, lend=1)
lines(x= tree[pieces[[3]],1], y= c(tree[pieces[[3]],2][1] + const, tree[pieces[[3]],2][2] - const), lwd= 15, lend=1)
lines(x= c(tree[pieces[[4]],1][1] + const, tree[pieces[[4]],1][2] - const), y= tree[pieces[[4]],2], lwd= 15, lend=1)
lines(x= c(tree[pieces[[5]],1][1] + const, tree[pieces[[5]],1][2] - const), y= tree[pieces[[5]],2], lwd= 15, lend=1)
lines(x= c(tree[pieces[[6]],1][1] + const, tree[pieces[[6]],1][2] - const), y= tree[pieces[[6]],2], lwd= 15, lend=1)

# ground line and platform
abline(h=0)
lines(x= c(-(8+(13/16+5)/12)/2, (8+(13/16+5)/12)/2),
      y= c(.25,.25), lwd= 22, lend=1)

write.table(tree[,2], 'clipboard')