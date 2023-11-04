# 1
c1 <- c(3, 2, 3, 4, 2, 6, 7, 8, 1)
a <- matrix(c1, nrow = 3, byrow = TRUE)
print(a)
det(a)

# 2
c2 <- rep(1:3, each = 3)
b <- matrix(c2, nrow = 3, byrow = TRUE)
b
# 对应元素相乘(点乘)
c2 <- a * b
c2
# 矩阵的乘法(叉乘)
c3 <- a %*% b
c3

# 3
# generate by row
a <- matrix(1:16, nrow = 4, byrow = TRUE)
a
# generate by column
b <- matrix(1:16, nrow = 4, byrow = FALSE)
b

c <- a + b
c
d <- a %*% b
d


# 4
data <- read.csv(file = "./r_note/exercise/data.csv", sep = " ")
data
class(data)
data$height

# 5
data$bmi <- data$weight / (data$height ^ 2)
data

# 6
x <- 1:10
write(x, file = "./r_note/exercise/x.txt", ncolumns = 1)
rm("x")
# 验证是否删除变量x
x
x <- read.csv("./r_note/exercise/x.txt", header = FALSE,
              sep = " ")
# 转换数据类型
x$V1 <- as.numeric(x$V1)
x
is.numeric(x$V1)

# 7
mtcars
mtcars_bak <- mtcars # 备份，防止源数据消失
head(mtcars_bak)
library(plyr)
sid <- "2021442951"
rename(mtcars_bak, c(vs = 51))
write.csv(x = mtcars_bak, "./r_note/exercise/mtcars.csv", quote = FALSE)
mtcarsnew <- read.csv("./r_note/exercise/mtcars.csv")
mtcarsnew
# 8
mtcars_bak <- mtcars # 备份，防止源数据消失
mm <- as.matrix(mtcars_bak)
class(mm)
mm[6, ] <- 51   # 从结果来看赋值虽然为标量51，但是它扩展为了向量，并且遵循对应列的type
mm
mtcars11 <- mm[c(1:11), ]
mtcars11
# for (i in 1:11){
#   mt[i] <- mtcars[i, i]
# }
mt <- diag(mtcars11)
mt
mtupper <- matrix(data = NA, nrow = 11, ncol = 11)
k <- 11
for (i in 1:11){
  for (j in 1:k){
    mtupper[i, j] <- mtcars11[i, j]
  }
  k <- j - 1
}
mtupper
# 9
row.names(mtupper) <- rep("NULL", 11)
colnames(mtupper) <- rep("NULL", 11)

# 10
# 编写自定义函数，因为行里有缺失值
sum_row_ignore_na <- function(row) {
  sum(row, na.rm = TRUE)
}
mtupper
mtsum <- vector()
mtsum <- apply(mtupper, 1, sum_row_ignore_na)
mtsum
