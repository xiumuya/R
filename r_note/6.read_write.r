# 数据的输入

## 使用键盘输入
mydata <- data.frame(age = numeric(0), gender = character(0),
                     weight = numeric(0))
mydata <- edit(mydata) # 相等于 fix(mydata)
mydata


## 在代码中嵌入
mydata <- "
age gender weight
25  M      55
22  F      50
23  M      60
"
mydata
## 从带分隔符的文本文件中导入数据
column_names <- c("StudentID", "First", "Last", "Math", "Science",
                  "Social Studies")
grades <- read.table(".\\r_note\\student_grades.csv",
                     header = TRUE, sep = ",")
grades
#    First           Last MAth Science Social.Studies
# 11   Bob          Smith   90      87             67
# 12  Jane          Weary   75      NA             80
# 13   Dan  Thornton, III   65      75             70
# 14  MAry        O'Leary   90      95             92

str(grades)
# 'data.frame':   4 obs. of  5 variables:
#  $ First         : chr  " Bob" " Jane" " Dan" " MAry"
#  $ Last          : chr  " Smith" " Weary" " Thornton, III" " O'Leary"
#  $ MAth          : int  90 75 65 90
#  $ Science       : int  87 NA 75 95
#  $ Social.Studies: int  67 80 70 92

## 导入excel文件
### 下载包 install.packages("readxl")
library(package = readxl)
workbook <- "./r_note/student_grades.xlsx"
help(readxl)
mydataframe <- read_excel(path = workbook, sheet = 1)
mydataframe
head(mydataframe)



# 数据的写出

## wirte_csv
write.csv(grades, "./data/studentInfo.csv", quote = FALSE,
          row.names = FALSE, fileEncoding = "UTF-8")

## write_table
write.table(grades, file = "./data/studentInfo.txt",
            quote = FALSE, sep = "\t", row.names = FALSE)

