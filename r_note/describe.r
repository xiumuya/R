# 描述性统计
## summary
summary(head(mtcars[, 1:5]))

##sapply
sapply(head(mtcars[, 1:5]), FUN = fivenum)

##自定义函数
mtcars_bak <- mtcars
is.na(mtcars_bak)

myfunc <- function(data, na.omit = FALSE) {
  if (!na.omit) {
    data <- data[!is.na(data)]
    n <- length(data)
    mean <- mean(data)
    min <- min(data)
    return(c(n = n, mean = mean, min = min))

  }
}

myfunc(head(mtcars_bak[, 1:3]))
sapply(head(mtcars_bak[, 1:3]), myfunc)

## 更多方法
library(Hmisc)
### descirbe
describe(mtcars_bak[, 1:3])


### aggregate
aggregate(x = mtcars_bak[, 5:10], by = list(mtcars_bak$am), mean)

### by
by(data = mtcars_bak[, 5:10], mtcars_bak$am, myfunc)


### descirbeBY

library(psych)
describeBy()

