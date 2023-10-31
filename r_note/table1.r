library(vcd)
# 生成一维列联表
mytable <- table(Arthritis$Improved)
mytable


mytable1 <- with(Arthritis, table(Improved))
mytable1
proportion_table <- prop.table(mytable) * 100

# 生成二维列联表
mytables <- xtabs(~ Treatment + Improved, data = Arthritis)
mytables

# 边际频数和比例
margin.table(mytables, margin = 1)
proportion_tables <- prop.table(mytables, margin = 1) * 100


# 添加边际和
# 对频数表求边际和
addmargins(proportion_tables)

# 对列求边际和
addmargins(mytables, 1)

# 对行求边际和
addmargins(mytables, 2)

