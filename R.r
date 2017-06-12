############# R

############  Code Achool  #############

'''
R Syntax: A gentle introduction to R expressions, variables, and functions
Vectors: Grouping values into vectors, then doing arithmetic and graphs with them
Matrices: Creating and graphing two-dimensional data sets
Summary Statistics: Calculating and plotting some basic statistics: mean, median, and standard deviation
Factors: Creating and plotting categorized data
Data Frames: Organizing values into data frames, loading frames from files and merging them
Working With Real-World Data: Testing for correlation between data sets, linear models and installing additional packages
'''

############# R

############  Code Achool  #############

# Expressions
>1 + 1
[1] 2

>"Arr, matey!"
[1] "Arr, matey!"

> 6*7
[1] 42

# Logical values
> 3 < 4
[1] TRUE

> 2 + 2 == 5
[1] FALSE

> T == TRUE
[1] TRUE

# Variables
> x <- 42

> x / 2
[1] 21

> x <- "Arr, matey!"
[1] "Arr, matey!"

> x
[1] "Arr, matey!"

> x <- TRUE
[1] TRUE

> sum(1,3,5)
[1] 9

> rep("Yo ho!", times = 3)
[1] "Yo ho!" "Yo ho!" "Yo ho!"

> sqrt(16)
[1] 4

> help(sum)

> example(min)

> list.files()
[1] "bottle1.R" "bottle2.R"

# To run a script
> source("bottle1.R")
[1] "This be a message in a bottle1.R!"

> source("bottle2.R")
[1] "Will ye be me pen pal?"

################ Vectors
# a vector is simply a list of values.
# A vector's values can be numbers, strings, logical values, or any other type, as long as they're all the same type.
> c(4,7,9)
[1] 4 7 9
# c - combine

> c('a','b','c')
[1] "a" "b" "c"

> c(1,TRUE,"three")
[1] "1"     "TRUE"  "three"

> c(5:9)
[1] 5 6 7 8 9

> seq(5,9)
[1] 5 6 7 8 9

> seq(5,9,0.5)
[1] 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0

> c(9:5)
[1] 9 8 7 6 5

> sentence <- c('walk', 'the', 'plank')
> sentence[3]
[1] "plank"

> sentence[1]
[1] "walk"

> sentence[3] <- "dog"

> sentence[4] <- 'to'

> sentence[c(1,3)]
[1] "walk" "dog"

> sentence[2:4]
[1] "the" "dog" "to" 

> sentence[5:7] <- c('the', 'poop', 'deck')

> ranks <- 1:3
> names(ranks) <- c("first", "second", "third")

> ranks["first"]
first 
    1

> ranks["third"] <- 4

# Plotting One Vector
> vesselsSunk <- c(4, 5, 1)
> barplot(vesselsSunk)

> names(vesselsSunk) <- c("England", "France", "Norway")

> barplot(1:100)

# Vector Math

> a <- c(1, 2, 3)
> a + 1
[1] 2 3 4

> a/2
[1] 0.5 1.0 1.5

> a * 2
[1] 2 4 6

> b <- c(4, 5, 6)
> a + b
[1] 5 7 9

> a - b
[1] -3 -3 -3

> a == c(1, 99, 3)
[1]  TRUE FALSE  TRUE

> a == b
[1] FALSE FALSE FALSE

> sin(a)
[1] 0.8414710 0.9092974 0.1411200

# Scatter Plots

> x <- seq(1, 20, 0.1)
> y <- sin(x)
> plot(x,y)

> values <- -10:10
> absolutes <- abs(values)
> plot(value­s, absol­utes) 

# Missing values
> a <- c(1, 3, NA, 7, 9)
> sum(a)
[1] NA

# na.rm is FALSE by default so to remove it set to TRUE
> sum(a, na.rm = TRUE)
[1] 20

# Matrix
> matrix(0,3,4)
     [,1] [,2] [,3] [,4]
[1,]    0    0    0    0
[2,]    0    0    0    0
[3,]    0    0    0    0

# Vector
> a <- 1:12
> print (a)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12
> matrix(a,3,4)
     [,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12

# Other way of converting vector to matrix
> plank <- 1:8
> dim(plank) <- c(2,4)
> print(plank)
     [,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8

> matrix(1,5,5)
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    1    1    1    1
[2,]    1    1    1    1    1
[3,]    1    1    1    1    1
[4,]    1    1    1    1    1
[5,]    1    1    1    1    1

# Getting value from matrix
> print(plank)
     [,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8

> plank[2,3]
[1] 6

> plank[1,4]
[1] 7

> plank[1,4] <- 0

> plank[2,]
[1] 2 4 6 8

> plank[,4]
[1] 7 8

> plank[,2:4]
     [,1] [,2] [,3]
[1,]    3    5    7
[2,]    4    6    8

# Matrix plotting
> elevation <- matrix(1,10,10)

> elevation[4,6] <- 0

# Contour map
> contour(elevation)

# 3D plot
> persp(elevation)

# Expand
> persp(elevation, expand=0.2)

> contour(volcano)

> persp(volcano, expand = 0.2)

# Heat map
> image(volcano)

# Summary and Statistics
> limbs <- c(4, 3, 4, 3, 2, 4, 4, 4)
> names(limbs) <- c('One-Eye', 'Peg-Leg', 'Smitty', 'Hook', 'Scooter', 'Dan', 'Mikey', 'Blackbeard')
> mean(limbs)
[1] 3.5

> barplot(limbs)

# Draw a mean line using abline in barplot
> abline(h = mean(limbs))

# Skewing the mean
> limbs <- c(4, 3, 4, 3, 2, 4, 4, 14)
> names(limbs) <- c('One-Eye', 'Peg-Leg', 'Smitty', 'Hook', 
                    'Scooter', 'Dan', 'Mikey', 'Davy Jones')
> mean(limbs)
[1] 4.75
> abline(h = mean(limbs))
# This is  misleading 4.75 is only factually correct

# So use median
> median(limbs)
[1] 4

> abline(h = median(limbs))

> abline(v = median(limbs))

# Standard deviation
> pounds <- c(45000, 50000, 35000, 40000, 35000, 45000, 10000, 15000)
> barplot(pounds)
> meanValue <- mean(pounds)

> abline(h = meanValue)

# Mean is like te average and median is used when we have even number of components to find average
# Statisticians use the concept of "standard deviation" from the mean to describe the range of typical values for a data set. For a group of numbers, it shows how much they typically vary from the average value. To calculate the standard deviation, you calculate the mean of the values, then subtract the mean from each number and square the result, then average those squares, and take the square root of that average.

> deviation <- sd(pounds)

> abline(h = meanValue + deviation)

> abline(h = meanValue - deviation)

# Factors
# Often your data needs to be grouped by category: blood pressure by age range, accidents by auto manufacturer, and so forth. R has a special collection type called a factor to track these categorized values.

> chests <- c('gold', 'silver', 'gems', 'gold', 'gems')
> types <- factor(chests)

> print(chests)
[1] "gold"   "silver" "gems"   "gold"   "gems"  

> print(types)
[1] gold   silver gems   gold   gems  
Levels: gems gold silver

# Printed at the bottom, you'll see the factor's "levels" - groups of unique values. Notice also that there are no quotes around the values. That's because they're not strings; they're actually integer references to one of the factor's levels.

> as.integer(types)
[1] 2 3 1 2 1

> levels(types)
[1] "gems"   "gold"   "silver"

> weights <- c(300, 200, 100, 250, 150)
> prices <- c(9000, 5000, 12000, 7500, 18000)
> plot(weights, prices)

# We can't tell which chest is which, though. Fortunately, we can use different plot characters for each type by converting the factor to integers, and passing it to the pch argument of plot.

> legend("topright", c("gems","gold","silver"),pch=1:3)

> legend("topright", levels(types), pch=1:length(levels(types)))

# Dataframe

> treasure <- data.frame(weights, prices, types)

> print(treasure)
  weights prices  types
1     300   9000   gold
2     200   5000 silver
3     100  12000   gems
4     250   7500   gold
5     150  18000   gems

> treasure[[2]]
[1]  9000  5000 12000  7500 18000

> treasure[["weights"]]
[1] 300 200 100 250 150

> treasure$prices
[1]  9000  5000 12000  7500 18000

> treasure$types
[1] gold   silver gems   gold   gems  
Levels: gems gold silver

# Loading Data Frames

> list.files()
[1] "targets.csv" "infantry.txt"

"targets.csv"
"Port","Population","Worth"
"Cartagena",35000,10000
"Porto Bello",49000,15000
"Havana",140000,50000
"Panama City",105000,35000

> read.csv("targets.csv")
         Port Population Worth
1   Cartagena      35000 10000
2 Porto Bello      49000 15000
3      Havana     140000 50000
4 Panama City     105000 35000

"infantry.txt"

Port         Infantry
Porto Bello  700
Cartagena    500
Panama City  1500
Havana       2000

> read.table("infantry.txt", sep="\t")
           V1       V2
1        Port Infantry
2 Porto Bello      700
3   Cartagena      500
4 Panama City     1500
5      Havana     2000

> read.table("infantry.txt", sep="\t", header = TRUE)
         Port Infantry
1 Porto Bello      700
2   Cartagena      500
3 Panama City     1500
4      Havana     2000

# Merging Data Frames

> targets <- read.csv("targets.csv")
> infantry <- read.table("infantry.txt", sep="\t", header=TRUE)
> merge(x = targets, y = infantry)
         Port Population Worth Infantry
1   Cartagena      35000 10000      500
2      Havana     140000 50000     2000
3 Panama City     105000 35000     1500
4 Porto Bello      49000 15000      700

# Real world data

Country,Piracy
Australia,23
Bangladesh,90
Brunei,67
China,77
...

> piracy <- read.csv("piracy.csv")

	Rank    Country        GDP
1       Liechtenstein  141100
2       Qatar          104300
3       Luxembourg     81100
4       Bermuda        69900
...

> gdp <- read.table("gdp.txt", sep="  ", header=TRUE)

> countries <- merge(x = gdp, y = piracy)

> plot(countries$GDP, countries$Piracy)

# It looks like there's a negative correlation between wealth and piracy - generally, the higher a nation's GDP, the lower the percentage of software installed that's pirated. But do we have enough data to support this connection? Is there really a connection at all?
# R can test for correlation between two vectors with the cor.test function. Try calling it on the GDP and Piracy columns of the countries data frame:

> cor.test(countries$GDP, countries$Piracy)

	Pearson's product-moment correlation

data:  countries$GDP and countries$Piracy 
t = -14.8371, df = 107, p-value < 2.2e-16
alternative hypothesis: true correlation is not equal to 0 
95 percent confidence interval:
 -0.8736179 -0.7475690 
sample estimates:
       cor 
-0.8203183 

# The key result we're interested in is the "p-value". Conventionally, any correlation with a p-value less than 0.05 is considered statistically significant, and this sample data's p-value is definitely below that threshold. In other words, yes, these data do show a statistically significant negative correlation between GDP and software piracy.
# We have more countries represented in our GDP data than we do our piracy rate data. If we know a country's GDP, can we use that to estimate its piracy rate?
# We can, if we calculate the linear model that best represents all our data points (with a certain degree of error). The lm function takes a model formula, which is represented by a response variable (piracy rate), a tilde character (~), and a predictor variable (GDP). (Note that the response variable comes first.)
# Try calculating the linear model for piracy rate by GDP, and assign it to the line variable:

> line <- lm(countries$Piracy ~ countries$GDP)

> abline(line)

# ggplot2

> install.packages("ggplot2")

> help(package = "ggplot2")
                Information on package 'ggplot2'

Description:

Package:            ggplot2
Type:               Package
Title:              An implementation of the Grammar of Graphics
Version:            0.9.1

...


> weights <- c(300, 200, 100, 250, 150)
> prices <- c(9000, 5000, 12000, 7500, 18000)
> chests <- c('gold', 'silver', 'gems', 'gold', 'gems')
> types <- factor(chests)

# The qplot function is a commonly-used part of ggplot2. We'll pass the weights and values of our cargo to it, using the chest types vector for the color argument:

> qplot(weights, prices, color = types)























































































































































































