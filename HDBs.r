
hotdogs <-
read.csv("hot-dog-contest-winners.csv",sep=",", header=TRUE)


fill_colors <- c()
for ( i in 1:length(hotdogs$New.record) ) {
if (hotdogs$New.record[i] == 1) {
fill_colors <- c(fill_colors, "darkolivegreen")
} else {
fill_colors <- c(fill_colors, "azure3")
}
}
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col=fill_colors,
border=NA, main = "HOT DOG EATING", xlab="Year", ylab="Hot dogs and buns (HDB) eaten")


