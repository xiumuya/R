patient_id <- c(1, 2, 3, 4)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type3", "Type4")
status <- c("Poor", "Improved", "Excellent", "Poor")
patient_data <- data.frame(patient_id, age, diabetes, status)
patient_data
# 选取数据框中的元素
## 1. 下标记号
part_of_patient_data <- patient_data[1:2, 1:4]
part_of_patient_data

## 2. 以向量形式写入,  默认为列向量
part_of_patient_data <- patient_data[c("diabetes", "status")]
part_of_patient_data
