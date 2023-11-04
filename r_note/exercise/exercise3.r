# 1
data <- read.csv(file = "./r_note/exercise/data.csv", sep = "", header = TRUE)
data
# 2
par(mfrow = c(1, 2))
plot(data$height, data$weight)
# 3
plot(data$height, data$weight, xlab = "身高", ylab = "体重", pch = 2)

# 4
cityrain <- read.csv("./r_note/exercise/cityrain.csv")
plot(cityrain$Tokyo, xaxt = "n", type = "b", col = "black",
     xlab = "Month", ylab = "Rainfall in major cities",
     main = "Monthly Rainfall in major cities")
axis(side = 1, at = 1:12, labels = cityrain$Month)

# 5
x <- seq(from = 0, to = 4 * pi, by = 4 * pi / 50)
x
plot(x, sin(x), type = "b", pch = 1, col = "black", lty = 1,
     main = "正弦余弦函数图象", ylab = "sinx | cosx", xlab = "x")
lines(x, cos(x), type = "b", pch = 2, col = "pink", lty = 4)
text(3 / pi, 1 / 2, "箭头+y = cosx")
text(13 / pi, 1 / 2, "箭头+y = sinx")
