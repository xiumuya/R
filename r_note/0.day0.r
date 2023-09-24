a <- c(1, 2, 3, 4, 5)
b <- c("a", "b")
a

y <- matrix(1:10, 5, 2, byrow = TRUE, dimnames = list(a, b))
y


h <- c(1, 2, 3, 4, 5, 6)
m <- c("A", "B", "C", "D", "E", "F")
barplot(h, names.arg = m, xlab = "X", ylab = "Y", col = "#00cec9",
  main = "Chart", border = "#fdcb6e"
)
