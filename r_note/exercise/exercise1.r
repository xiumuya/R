# 1
y <- sin(10 * pi) * exp(-0.3 + 4 ^ 2) + log(base = 4, x = 23)
print(y)

# 2
x <- sin(223 / 3)
y <- x ^ 2
z <- y * 10
print(x + 2 * y - 5 * z)

# 3
x <- seq(from = 3, to = 44, by = 5.5)
print(x)

# 4
x <- seq(from = 0, to = pi, by = (pi / 14))
length(x)
print(x)

# 5
numeric <- c(100, 200, 200, 200, 400, 600, 600, 600, 800)
print(numeric)

# 6
factor_numeric <- factor(numeric)
class(factor_numeric)

# 7
paste("factor_numeric: ", factor_numeric, sep = " ")
factor_numeric

# 8
vector1 <- seq(from = 2, to = 50, by = 2)
vector1

# 9
vector1[20]

# 10
print(vector1[c(10, 15, 20)])

# 11
print(vector1[10:20])

# 12
print(vector1[vector1 > 40])

# 13
vector2 <- rep(x = 1:5, times = 5)
# 14
vector3 <- rep(0:4, each = 5)

# 15
x <- rep(c(3, 2, 1), c(3, 4, 5))
x
# 16
x <- pretty(c(-3, 3), 50)
y <- dnorm(x)
plot(x, y, xlabel = x, ylabel = y, title = "dnormal", type = "l")

# 17
print(pnorm(1.96))

# 18
qnorm(mean = 500, sd = 100, p = .9)
# 19
rnorm(mean = 50, n = 50, sd = 10)
