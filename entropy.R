#' entropy

library(ggplot2)

#' Load data
data<-read.csv("C:\\Users\\jxver\\Dropbox\\sentence\\k-core\\lattices.csv")
View(data)

#' plot
m <- ggplot(data, aes(x = networks, y = lattices)) + geom_point()
plot(m)
m + geom_density_2d(alpha = 0.5,colour = "black")


library(MASS)
den3d <- kde2d(data$networks, data$lattices, n=100)
persp(den3d, box=T,theta = 30, phi = 30, expand = 0.5, col = "orange",
      ltheta = 10, shade = 0.1, ticktype = "detailed",
      xlab = "networks", ylab = "latticized networks", zlab = "density")


Linear_model <- lm(lattices~networks,data=data)
print(Linear_model)
summary(Linear_model)

