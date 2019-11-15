# HW assignment exercise 07
# Exercise question 1
# Write an R script that returns only the odd rows of any data frame
setwd("~/Desktop/data-biocomp/IBC_Exercise_07")

getwd()
iris <- read.csv("iris.csv")
oddrow <- function(x) {
  n <- nrow(x)
  y <- seq(1,n, by=2)
  a <- x[y,]
  return(a)
}
oddrow(iris)

# Exercise question 2 - write out functions that do the following:
# A) return the number of observations for a given species in a data set

speciesObs <- function(x, c) {
  z <- x[x[,5]==c,]
  w <- nrow(z)
  return(w)
}
speciesObs(iris, "versicolor")

# B) return a dataframe containing flowers with a sepal width greater than
# a specified value in the function.

sepal.width <- function(x, c) {
  y=x[x[,2]>c,]
  assign("sepalWidth", y, envir=.GlobalEnv )
  return(y)
}
sepal.width(iris, 3)

# C) write the data for a given species in a comma-delimted file with the 
# species name as the file name

new.species.table <- function(x, c) {
  y <- x[x[,5]==c,]
  write.csv(y, paste(c, ".csv"))
  return(y)
}

new.species.table(iris, "versicolor")



