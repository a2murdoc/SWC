getwd()
cats <- read.csv(file = "data/cat.csv")
cats
cats$weight
mean(cats$weight)
typeof(cats$weight)
typeof(cats$like_string)
typeof(cats$ï..coat)
as.logical(cats$like_string)

cats[1,1]
class(cats$ï..coat)
names(cats) <- c("coat", "weight", "like_string")
names(cats)
names(cats)[1] <- "coats"
names(cats)

nrow(cats)
ncol(cats)
dim(cats)
