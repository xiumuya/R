# par(mfrow) 将一块画布分为四分, 两行两列,按行布局
# mfrow: multiFrame rowwise layout
# mfcol: multiFrame columnwise layout   按列布局
par(mfrow = c(2, 2))
slicies <- c(10, 12, 4, 16, 8)
pcd <- round(slicies / sum(slicies) * 100)
labls <- c("US", "UK", "Australia", "Germany", "France")

# 饼图
pie(slicies, labels = labls, main = "Simple Pie Chat")
pie(slicies, labels = paste(labls, " ", slicies, "%"))

# 扇形图
library(plotrix)
fan.plot(slicies, labels = paste(labls, " ", slicies, "%"))


# 直方图
par(mfrow = c(2, 2))
attach(mtcars)

hist(mpg) # 展示了前五个数据
hist(mpg, breaks = 12, col = c("red")) # 展示前12个数据

x <- mpg
xfit <- seq(min(x), max(x), length = 40)
yfit <- dnorm(xfit, mean = mean(x), sd = sd(x))
yfit <- yfit * diff(h$mids[1:2] * length(x))
h <- hist(mpg, breaks = 12, col = c("red")) # 展示前12个数据
lines(xfit, yfit, col = "blue", lwd = 2)
box()

detach(mtcars)


# 箱线图
salary <- c(500, 2000, 2100, 2200, 2300, 2350, 2450, 2700, 2900, 2850, 3500,
            3800, 4500, 4600, 4800, 7000)
boxplot(salary)

# boxplot 按cyl分组
attach(mtcars)
boxplot(mpg ~ cyl, data = mtcars, col = c("green", "yellow", "red"))
detach(mtcars)

help(boxplot)
