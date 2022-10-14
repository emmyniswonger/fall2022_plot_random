## PlotRandom.R
##
## Purpose: a function that will generate a random sample
##          of normal deviates, plot a histogram and maybe
##          provide some "other stuff"

## stuff from last time...
plotRandomD <- function(numpts=100) {
  hist(rnorm(numpts))
}
plotRandomD()

############################

## Lets build in more flexibility for our function
plotRandomNormals <- function(numpts=1000, mu=24, sigma=3, numbins=15,
                              title = "My Histogram, Oct 14th, 2022",
                              meanColor ="red",
                              seed=8675309) 
  {
  set.seed(seed)
  rand_x <- rnorm(numpts, mean=mu, sd=sigma)
  mean_x <- mean(rand_x)
  hist(rand_x, breaks=numbins, main=title)
  abline(v=mean_x, col=meanColor)
  list(Mean_x = mean_x,
       StdDev_x = sd(rand_x),
       RandomValues = rand_x)
}

plotRandomNormals()
