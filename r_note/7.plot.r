# to create a new window to show several graghs
dev.new()
attach(mtcars)
plot(wt, mpg)
abline(lm(mpg ~ wt)) # abline() 添加参考线或回归线
dev.new()
plot(wt, mpg)
abline(lm(mpg ~ wt)) # abline() 添加参考线或回归线
detach()


# to save gragh as pdf
pdf("./img/wt_mpg.pdf")
attach(mtcars)
plot(wt, mpg)
abline(lm(mpg ~ wt)) # abline() 添加参考线或回归线
dev.off()
detach()

# 图形参数(字体， 颜色， 坐标轴， 标签......)
##  符号和线条
dose <- c(20, 30, 40, 45, 60)
drug_a <- c(16, 20, 27, 40, 60)
drug_b <- c(15, 18, 25, 31, 40)
plot(dose, drug_a, type = "b", lty = 3, lwd = 3,
     pch = 15, cex = 2)

## can also use par()
## par: Graphics Parameters
opar < - par(no.readonly = TRUE) # make a copy of current setting
#######################################
## Here are some parameters in par()
## parameter:
##           lty: line type
##           pch: point character
##           cex: character expansion
##           lwd: line width
#######################################
par(lty = 3, lwd = 3, pch = 15, cex = 2)
plot(dose, drug_a, type = "b")
par(opar)

## 颜色
### 颜色的表示: 颜色下标, 颜色名称, 十六进制颜色值, RGB值或HSV值
### parameters of col
###########################################
## Parameter:
##           col     : 颜色向量
##           col.axis: 坐标轴刻度文字颜色
##           col.lab : 坐标轴标签颜色
##           col.main: 标题颜色
##           col.sub : 副标题颜色
##           fg      ：图形前景色
##           bg      : 图形背景色
###########################################


## 文本属性
### 可以指定文本的字号, 字体, 和字样
### cex
### parameters of cex
###########################################
## Parameter
##           cex     : 符号缩放倍数
##           cex.axis: 坐标轴刻度文字缩放倍数
##           cex.lab : 坐标轴标签文字缩放倍数
##           cex.main: 标题文字缩放倍数
##           cex.sub : 副标题文字缩放倍数
###########################################


### font
### parameters of font
###########################################
## Parameter
##           font     : 字体样式
##           font.axis: 坐标轴刻度文字字体样式
##           font.lab : 坐标轴标签文字字体样式
##           font.main: 标题文字字体样式
##           font.sub : 副标题文字字体样式
###########################################

### 图形尺寸与边界尺寸
############################################################################
#### Parameter
##            pin: 以英寸表示图形尺寸(宽和高)
##            mai: 以数值向量表示的边界大小, 顺序为 "下, 上, 左, 右", 单位为英寸
##            mar: 以数值向量表示的边界大小, 顺序为 "下, 上, 左, 右", 单位为英分
############################################################################

### tittle