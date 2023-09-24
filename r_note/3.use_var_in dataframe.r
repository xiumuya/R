# use "$" to atttach variable in dataframe
## 对象名称中的点号(.)没有特殊意义
## 美元符号和点类似,可以访问数据框或列表中的某些元素
summary(mtcars$mpg)
plot(mtcars$mpg, mtcars$disp)



# attach
attach(mtcars)
plot(mpg, disp)
detach(mtcars)
## 当名称对象不止一个时，这种方法的局限性就很明显了
mpg <- c(2, 23, 4)
## Warning: The following object is masked _by_ .GlobalEnv:mpg
attach(mtcars)
plot(mpg, disp)
## Error in xy.coords(x, y, xlabel, ylabel, log) : 'x'和'y'的长度不一样




# use function: with
with(mtcars, {
  print(summary(mpg))
  plot(mpg, disp)
  plot(mpg, wt)
  ## < - 创建局部变量
  mesg1 <- c("a", "b")
  ## << - 创建全局变量
  mesg2 <<- c("a", "c")
})
print(mesg1) ## 错误: 找不到对象'mesg1'
print(mesg2) ## [1] "a" "c"