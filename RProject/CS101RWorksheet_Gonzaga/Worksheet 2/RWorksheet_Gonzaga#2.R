#1
vec <- -5:5
print(vec)
x <- 1:7
print(x)

#2
x <- seq(1, 3, by = 0.2)
x

#3
ages <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
          22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37,
          43, 53, 41, 51, 35, 24, 33, 41, 53, 40, 18, 44, 38,
          41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18)

ages[3]

ages[c(2,4)]

ages[-c(4,12)]

#4
x <- c("first" = 3, "second" = 0, "third" = 9)
x

(x[c("first", "third")])

#5
x <- -3:2
x[2] <- 0
print(x)

#6
mrCruzdata <- data.frame(
  Month = c("Jan", "Feb", "Mar", "Apr", "May", "Jun"),
  Price_Per_Liter = c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00),
  Purchase_Quantity = c(25, 30, 40, 50, 10, 45)
)

mrCruzdata
average_fuel <- weighted.mean(mrCruzdata$Price_Per_Liter, mrCruzdata$Purchase_Quantity)
average_fuel
rivers

#7
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), 
          sd(rivers), min(rivers), max(rivers))
data

#8
power_ranking <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
                   11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 
                   21, 22, 23, 24, 25)

celebrity_name <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods",
                    "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos",
                    "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali",
                    "Paul McCartney", "George Lucas", "Elton John", "David Letterman",
                    "Phil Mickelson", "J.K. Rowling", "Bradd Pitt", "Peter Jackson",
                    "Dr. Phil McGraw", "Jay Leno", "Celine Dion", "Kobe Bryant")

pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 
         55, 44, 55, 40, 233, 34, 40, 47, 75, 25, 
         39, 45, 32, 40, 31)

power_ranking
celebrity_name
pay

power_ranking[19] <- 15
pay[19] <- 90

power_ranking[19]
pay[19]

data_forbes <- read.csv("PowerRanking.csv")
rdata <- data_forbes[10:20, ]

save(rdata, file = "Ranks.RData")

load("Ranks.RData")
rdata

#9
library(openxlsx)
vienna <- read.xlsx("hotels-vienna.xlsx")
dim(vienna)
sel_col <- vienna[, c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]
save(sel_col, file = "new.RData")
load("new.RData")
head(sel_col)
tail(sel_col)

#10
gulay <- list("Okra", "Repolyo", "Kamote", "Kangkong", "Kalabasa", "Pechay", "Pipino", "Patatas", "Sitaw", "Malunggay")
gulay

gulay <- append(gulay, list("Broccoli", "Mais"))
gulay

gulay <- append(gulay, list("Patola", "Talong", "Sayote", "Kasoy"), after = 5)
gulay

gulay <- gulay[-c(5, 10, 15)]
gulay 