library(xlsx)
workbook = "/home/student/Desktop/Results.xlsx"
mydataframe = read.xlsx(workbook, 1)

summary(mydataframe)

AppDev = c(92,84,73,85,89)
mean(AppDev)

plot(mydataframe$Term.1, main = "Term 1 Regression", ylab = "Percentage(%)")
abline(lsfit(1:8, mydataframe$Term.1))

plot(mydataframe$Term.2, main = "Term 2 Regression", ylab = "Percentage(%)")
abline(lsfit(1:8, mydataframe$Term.2))

plot(mydataframe$Term.3, main = "Term 3 Regression", ylab = "Percentage(%)")
abline(lsfit(1:8, mydataframe$Term.3))

plot(mydataframe$Term.4, main = "Term 4 Regression", ylab = "Percentage(%)")
abline(lsfit(1:8, mydataframe$Term.4))

plot(mydataframe$Term.5, main = "Term 5 Regression", ylab = "Percentage(%)")
abline(lsfit(1:8, mydataframe$Term.5))

hist(mydataframe$Term.5, main = "Histogram of Term 5 Marks", xlab = "Percentage(%)")
boxplot(mydataframe$Term.3, main = "Boxplot of Term 3 Marks", ylab = "Percentage")

library(reshape2)
alldata = melt(mydataframe)
colnames(alldata) = c("Subject Name", "Term", "Percentage(%)")
head(alldata)
alldata
library(ggplot2)
ggplot(alldata, aes(x = "Percentage", y = "Subject"))+geom_point()
