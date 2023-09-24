g <- "My First List"
h <- c(25, 26, 39, 18)
j <- matrix(1:10, nrow = 5)
k <- c("one", "two", "three")
mylist <- list(title = g, ages = h, j, k)
mylist

# 访问列表中的元素
mylist[["ages"]]
mylist[[2]]
