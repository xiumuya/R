# table
library(vcd)
## 生成一维列联表
mytable <- table(Arthritis$Improved)
mytable


mytable1 <- with(Arthritis, table(Improved))
mytable1
proportion_table <- prop.table(mytable) * 100

## 生成二维列联表
mytable2 <- xtabs(~ Treatment + Improved, data = Arthritis)
mytable2

## 生成多维列联表
mytable3 <- xtabs(~ Treatment + Improved + Sex, data = Arthritis)
mytable3
ftable(mytable3)


### 边际频数和比例
margin.table(mytable2, margin = 1)
proportion_tables <- prop.table(mytable2, margin = 1) * 100

### 添加边际和
### 对频数表求边际和
addmargins(proportion_tables)

#### 对列求边际和
addmargins(mytable2, 1)

##### 对行求边际和
addmargins(mytable2, 2)

# 使用gmodels
## Crosstalbe
library(gmodels)
CrossTable(Arthritis$Treatment, Arthritis$Improved)


# 卡方独立检验
chisq.test(mytable2)

# fisher独立性检验
fisher.test(mytable2)

# CMH检验
mantelhaen.test(mytable3)

