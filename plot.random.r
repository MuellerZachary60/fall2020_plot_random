## plot.random.r
## Zack Mueller
## STA 308
#
#Purpose: a function that will craete a random sample of normal deviates, 
#         plot a histagram and maybe provide some "other stuff"
###############################################################################
plotRandomD <- function(numpets=100) {
  hist(rnorm(numpets))
}

plotRandomD


# lets be more flexable for our function
plotRandomNormals <- function(numpts=1000, mu=24, sigma=3, numbins=15, 
                              title="My Histagram, Oct 14 2022", 
                              meanColor="red", 
                              seed=8675309) 
  {
  set.seed(seed)
  rand_x <- rnorm(numpts, mean=mu, sd=sigma)
  mean_x <- mean(rand_x)
  hist(rand_x, breaks=numbins, main=title)
  abline(v=mean_x, col=meanColor)
  list(Mean_X = mean_x,
       StdDev_X = sd(rand_x),
       RandomValues = rand_x
       )
}

plotRandomNormals()
plotRandomNormals(numbins=30)
plotRandomNormals(numpts=10000, mu=99, sigma=100)




















