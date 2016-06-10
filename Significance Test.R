sink("output.txt")
responses <- read.csv("responses.csv")

lm(data = responses)
responses.lm <- lm(data = responses)
summary.lm(responses.lm)

plot(responses,
     xlab = "Hours Spent on Mobile Device or PC",
     ylab = "Hours Spent Asleep",
     main = "Hours Spent on Mobile Device or PC Vs. Hours Spent Asleep",
     col = "blue",
     pch = 19)

correlation <- cor(responses$Hours.on.PC.or.Mobile.Device, responses$Hours.Asleep)
regression <- lm(responses)
abline(regression)
