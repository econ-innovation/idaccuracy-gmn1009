library(readr)
library(dplyr)

# 列出当前工作目录中的所有.csv文件
files_list <- list.files(pattern = "\\.csv$", full.names = TRUE)

# 初始化一个空的数据框（如果直接使用bind_rows在data_list上，这一步可选）
df <- data.frame()

# 循环遍历文件并读取数据
for (file_path in files_list) {
  file_data <- read_csv(file_path)
  df <- bind_rows(df, file_data) # 累积数据
}

# 可选，查看数据框的前几行
print(head(df))

# 使用lapply读取文件，然后合并它们
data_list <- lapply(files_list, read_csv)
combined_data <- bind_rows(data_list) # 直接合并，改名为combined_data



