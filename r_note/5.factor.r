# 名义型变量和有序型变量在R中称为因子
# factor() 以一个整数向量的形式存储类别值，整数的范围是[1, k]
#
diabetes <- c("Type1", "Type2", "Type3", "Type4")
diabetes <- factor(diabetes)
diabetes
# 要表示有序变量需要在函数factor()指定order = TRUE
#同时由一个字符串(原始值)组成的内部向量将映射到这些整数上

# 因子的使用
patient_id <- c(1, 2, 3, 4)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type3", "Type4")
status <- c("Poor", "Improved", "Excellent", "Poor")
diabetes <- factor(diabetes)
status <- factor(status, order = TRUE)
patient_data <- data.frame(patient_id, age, diabetes, status)
str(patient_data)

str(patient_data)
# 'data.frame':   4 obs. of  4 variables:
#  $ patient_id: num  1 2 3 4
#  $ age       : num  25 34 28 52
#  $ diabetes  : Factor w/ 4 levels "Type1","Type2",..: 1 2 3 4
#  $ status    : Ord.factor w/ 3 levels "Excellent"<"Improved"<..: 3 2 1 3
summary(patient_data)
#    patient_id        age         diabetes       status
#  Min.   :1.00   Min.   :25.00   Type1:1   Excellent:1
#  1st Qu.:1.75   1st Qu.:27.25   Type2:1   Improved :1
#  Median :2.50   Median :31.00   Type3:1   Poor     :2
#  Mean   :2.50   Mean   :34.75   Type4:1
#  3rd Qu.:3.25   3rd Qu.:38.50
#  Max.   :4.00   Max.   :52.00