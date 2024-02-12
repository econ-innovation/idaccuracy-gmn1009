library(readr)
library(dplyr)
library(stringr)

# 定义函数读取文件并提取指定列
read_and_extract <- function(file_path) {
  read_csv(file_path, col_types = cols()) %>%
    select(doi, year = publication_year, journal, title) %>%
    mutate(doi = str_to_upper(doi), journal = str_to_upper(journal), title = str_to_upper(title))
}

# 修改后的主函数，直接处理当前工作目录中的CSV文件
process_files_in_current_directory <- function() {
  files_list <- list.files(pattern = "\\.csv$", full.names = TRUE)
  combined_data <- lapply(files_list, read_and_extract) %>%
    bind_rows()
  return(combined_data)
}

# 执行修改后的主函数并打印结果
combined_data <- process_files_in_current_directory()
print(head(combined_data))
