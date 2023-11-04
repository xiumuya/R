# 1
## for
x <- 1:100
for (i in x) {
  print(i)
}

## while
x <- 1:100
i <- 1
while (i <= 100) {
  print(x[i])
  i <- i + 1
}

## repeat
j <- 1
repeat {
  print(j)
  j <- j + 1
  if (j > 100) {
    break
  }
}

# 2
i <- 1
sum_100 <- 0
while (i <= 100) {
  sum_100 <- sum_100 + i
  i <- i + 1
}

sum_100

# 3
i <- 1
sum_single <- 0
repeat {
  sum_single <- sum_single + i
  i <- i + 2
  if (i >= 100) {
    break
  }
}
print(sum_single)

# 4

sum_3_5 <- 0
for (num in 1:100) {
  if (num %% 3 == 0 || num %% 5 == 0) {
    sum_3_5 <- sum_3_5 + num
    print(num)
  }
}

print(sum_3_5)


# 5
set.seed(123) #设置随机数种子

r_vector <- rnorm(100, mean = 1, sd = 1)
min_vecotr <- min(r_vector)
min_vecotr
for (i in 1:100) {
  if (r_vector[i] == min_vecotr) {
    a <- paste("index of min in r_vector:", i)
    break
  }
}
print(a)


# 6
count <- 1
min.count <- vector() # 最小值的位置
min.norm <- vector() # 最小值
repeat {
  r_vector100 <- rnorm(100, mean = 1, sd = 1)
  min.norm[count] <- min(r_vector100)
  min.count[count] <- which.min(r_vector100) # 找出最小值的索引
  count <- count + 1
  if (count > 100) {
    break
  }
}
length(min.count)
min.norm
plot(min.norm, min.count, pch = 2, cex = 3 / 5, col = "red",
     xlab = "最小值", ylab = "出现位置")
title("正态分布随机向量的最小值与出现位置的关系")

# 7
## 7-1
seq1 <- 1:50
seq_2_p <- 2 ^ seq1
seq_2_p

## 7-2
seq_square <- seq1 ^ 2
seq_square

## 7-3
value <- seq_2_p[which(seq_2_p == seq_square)]
value
length(value)
