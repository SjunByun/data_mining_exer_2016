head(iris)

# import sas data
# library(foreign)
# sashome <- "C:/Program Files/SASHome/SASFoundation/9.4"
# filepath <- "./data"
# fileName <- "dumData"
# 
# a <- read.ssd(file.path(filepath), fileName, sascmd = file.path(sashome, "sas.exe"))

dim(iris)
attributes(iris)
summary(iris)
quantile(iris$Sepal.Length)
quantile(iris$Sepal.Length, c(.1, .3, .65))
var(iris$Sepal.Length)
plot(density(iris$Sepal.Length))
table(iris$Species)
pie(table(iris$Species))
cov(iris$Sepal.Length, iris$Petal.Length)
cor(iris$Sepal.Length, iris$Petal.Length)
cor(iris[, 1:4])
aggregate(Sepal.Length ~ Species, summary, data = iris)
boxplot(Sepal.Length ~ Species, data = iris)
with(iris, plot(Sepal.Length, Sepal.Width, col = Species, pch = as.numeric(Species)))
pairs(iris)

library(scatterplot3d)
scatterplot3d(iris$Petal.Width, iris$Sepal.Length, iris$Sepal.Width)

library(rgl)
plot3d(iris$Petal.Width, iris$Sepal.Length, iris$Sepal.Width)

distMatrix <- as.matrix(dist(iris[, 1:4]))
heatmap(distMatrix)

library(lattice)
levelplot(Petal.Width ~ Sepal.Length*Sepal.Width, iris, cuts = 9,
          col.regions = grey.colors(10)[10:1])

library(graphics)
filled.contour(volcano, color=terrain.colors, asp = 1, plot.axes = contour(volcano, add = T))
persp(volcano, theta = 25, phi = 30, expand = 0.5, col= "lightblue")

library(lattice)
parallelplot(~iris[1:4] | Species, data = iris)



