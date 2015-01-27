# Afternoon ggplot exercises at Tulane
# Install libraries

install.packages("ggplot2", dependencies = TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

# load libraries
library("ggplot2")
library("plyr")
library("reshape2")
library("ggthemes")

head(iris)
iris[1:2, ]
df <- melt(iris, id.vars = "Species")
df [1:2,]
library("reshape2")
df <- melt(iris, id.vars = "Species")
df [1:2, ]
myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.width))
library("ggplot2"")
myplot <- ggplot(data = iris, aes(x = Sepal.Lenght, y = Sepal.width))
summary(myplot)
myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width))
stop
)
ctrl c
myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width))
library("ggplot2")
myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width))
summary(myplot)
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point()
library("plyr")
library("ggthemes")
library("reshape2")
# geom_point is global and changes all points
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + geom_point(size = 3)
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + geom_point(aes(shape = Species), size = 3)
# make a small sample of the diamond dataset (100 points)
d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
head(d2)
ggplot(data = d2, aes(x = carat, y = price, color = color)) + geom_point(size = 3)
summary(d2)
ggplot(data = d2, aes(x = carat, y = price, color = color)) + geom_point(aes(shape = cut), size = 3)
ggplot(data = d2, aes(x = carat, y = price, color = color)) + geom_point(size = 3)
library(MASS)
ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()
myplot <- ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()
summary(myplot)
# facets
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point() + facet_grid(Species ~ .)
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point() + facet_grid(. ~ Species)
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point() + facet_wrap(~ Species)
#
library(RColorBrewer)
display.brewer.all()
df <- melt(iris, id.vars = "Species")
ggplot(df, aes(Species, value, fill = variable)) + geom_bar(stat = "identity", position = "dodge") + scale_fill_brewer(palette = "Set1")
# histograms
h <- ggplot(faithful, aes(x = waiting))
h + geom_histogram(binwidth = 30, color = "black")
h + geom_histogram(binwidth = 8, fill = "steelblue", color = "black")
# bar plots
ggplot(iris, aes(Species, Sepal.Length)) + geom_bar(stat = "identity")
df <- melt(iris, id.vars = "Species")
ggplot(df, aes(Species, value, fill = variable)) + geom_bar(stat = "identity", position = "dodge", color = "black")
summary(d2)
head(d2)
head(faithful)
h2 <- ggplot(d2, aes(x = clarity))
display.brewer.all()
h2 + geom_histogram(binwidth = 8, fill = variable) + scale_fill_brewer(palette = "Set2")
ggplot(df, aes(Species, value, fill = variable)) + geom_bar(stat = "identity", position = "dodge", color = "black")
h2 + geom_histogram(binwidth = 8) + geom_bar(stat = "identity", color = "Set2")
h + geom_histogram(binwidth = 8, fill = "steelblue", color = "black")
head(df)
h2 + geom_histogram(binwidth = 8) + geom_bar(stat = "identity")
ggplot(d2, aes(clarity, fill = cut)) + geom_bar(position = "dodge")
# Density Plot
ggplot(faithful, aes(waiting)) + geom_density()
ggplot(faithful, aes(waiting)) + geom_density(fill = "blue", alpha = 0.1)
ggplot(faithful, aes(waiting)) + geom_line(stat = "density")
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point(aes(shape = Species), size = 3) + geom_smooth(method = "lm")
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point(aes(shape = Species), size = 3) + geom_smooth(method = "lm") + facet_grid(. ~ Species)
# Themes
# can make custom plot by calling a function
# Publication quality figures
# ggsave(path to filename.png) <- can use whatever type you want (.png, .jpg, etc)
# can specify height/size
# practice http://docs.ggplot2.org/current 
# R graphics cookbook or ggplot2