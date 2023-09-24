# create a matrix
a <- c(1, 3, 4, 5, 6)

my_mytrix <- matrix(data = a, nrow = 1, ncol = 5, byrow = TRUE)
my_mytrix

# index and slice
y <- matrix(data = 1:25, nrow = 5, ncol = 5, byrow = TRUE,
            dimnames = list(c("a", "b", "c", "d", "e"),
                            c(1, 2, 3, 4, 5)))
y

part_of_y <- y[1:2, 1:3]
part_of_y

part_of_y <- y[1:3, c(1, 3, 5)]
part_of_y