# 练习1：类型转换和判断

# 将3.141592657转换为字符型
num_to_char <- as.character(3.141592657)
print(num_to_char)  # 打印字符型的数值

# 将3.141592657转换为逻辑型
num_to_logical <- as.logical(3.141592657)
print(num_to_logical)  # 由于数字非零，转换结果为TRUE

# 判断"hello world"是否为字符型
is_char <- is.character("hello world")
print(is_char)  # 应返回TRUE，因为"hello world"确实是字符型

# 判断NA是否表示缺失值
is_na <- is.na(NA)
print(is_na)  # 将返回TRUE，确认NA代表缺失值

# 练习2：向量操作

# 假设v1是预定义的向量，为完整起见，这里定义v1
v1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)  # 示例向量

# 从v1中提取第2和第3个元素
elements_2_3 <- v1[c(2, 3)]
print(elements_2_3)

# 从v1中提取最后一个元素
last_element <- tail(v1, 1)
print(last_element)

# 从v1中提取倒数第二个元素
second_last_element <- tail(v1, 2)[1]
print(second_last_element)

# 提取v1中能被3整除的元素
multiples_of_3 <- v1[v1 %% 3 == 0]
print(multiples_of_3)

# v1[-1]会返回什么？
print(v1[-1])  # 这会移除v1的第一个元素，返回剩余的部分。

# v1[5]会返回什么？
print(v1[5])  # 这将返回向量的第五个元素。

# v1[] <- 99 与 v1 <- 99 的区别
v1[] <- 99  # 这会将v1中所有元素替换为99
print(v1)
v1 <- 99  # 这会将整个向量替换为单个值99，改变其结构
print(v1)
