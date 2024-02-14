library(readr)
library(dplyr)


files_list <- list.files(pattern = "\\.csv$", full.names = TRUE)

df <- data.frame()


for (file_path in files_list) {
  file_data <- read_csv(file_path)
  df <- bind_rows(df, file_data) 
}

print(head(df))

data_list <- lapply(files_list, read_csv)
combined_data <- bind_rows(data_list) # 直接合并，改名为combined_data



