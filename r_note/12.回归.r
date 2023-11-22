mtcars
fit <- lm(mtcars$mpg ~ mtcars$cyl + mtcars$wt,
          data = list(mtcars$mpg, mtcars$cyl))
fit
fitted(fit)
residuals(fit) # 拟合残差
I()
state.x77


attach(state.x77)
is.data.frame(state.x77)
state <- as.data.frame(state.x77)
state
cor(state)
attach(state)
Murder
fit <- lm(formula = Murder ~ Population + Income,
          data = state)
fit
fitt <- fitted(fit)
residuals(fit)
plot(state$Murder)
# line(fitt)


detach(state)
