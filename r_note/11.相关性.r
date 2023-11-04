# 相关
## 线性相关
### Pearson相关系数
library(vcd)
head(mtcars)
### 协方差
cov(mtcars$mpg, mtcars$cyl)

### 相关系数
cor(mtcars$mpg, mtcars$cyl)

x <- mtcars[, c("mpg", "cyl", "disp", "hp")]
y <- mtcars[, c("wt", "qsec")]
cor(x = x, y = y)

### spearman 等级相关系数
#### Spearman等级相关系数则衡量分级定序变量之间的相关程度
cor(mtcars$mpg, mtcars$cyl, method = "spearman")
### kendman 非参数等级相关度量
cor(mtcars$mpg, mtcars$cyl, method = "kendall")

## 偏相关
### 控制几个变量，计算某两个变量之间的
### pcor()函数计算偏相关系数
library(ggm)
states <- state.x77[, 1:6]
head(states)
pcor(c(1, 5, 2, 3, 6), cov(states))

# 显著性
## cor.test
cor.test(states[, 5], states[, 3], alternative = "two.sided",
         method = "pearson")

## corr.test
### 多个变量之间的检验
library(psych)
corr.test(states[, 1:3], states[, 4:6], use = "complete")
