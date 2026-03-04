# Python 常用第三方库（数据分析三剑客）

Python 的强大在很大程度上归功于其丰富的第三方库生态。在数据科学、数据分析和机器学习领域，有三个库被誉为“数据分析三剑客”：**NumPy**、**Pandas** 和 **Matplotlib**。

## 1. 安装第三方库

在使用这些库之前，需要先通过 Python 的包管理工具 `pip` 进行安装。打开命令行或终端，运行以下命令：

```bash
pip install numpy pandas matplotlib
```

---

## 2. NumPy：强大的数值计算库

**NumPy** (Numerical Python) 是 Python 科学计算的基础库。它提供了一个高性能的多维数组对象（`ndarray`），以及用于处理这些数组的各种工具和数学函数。

### 主要特点
- 快速且高效的多维数组对象 `ndarray`。
- 执行数组元素的数学运算，无需编写循环（广播机制）。
- 线性代数、随机数生成、傅里叶变换等功能。

### 基本使用示例

```python
import numpy as np

# 创建一个一维数组
arr1 = np.array([1, 2, 3, 4, 5])
print("一维数组:", arr1)

# 创建一个 2x3 的二维数组（矩阵）
arr2 = np.array([[1, 2, 3], [4, 5, 6]])
print("二维数组:\n", arr2)

# 数组的数学运算（广播机制）
print("数组中每个元素加 10:", arr1 + 10)
print("两个数组相乘:\n", arr2 * 2)

# 常用的内置方法
print("数组的平均值:", np.mean(arr1))
print("生成随机数组:\n", np.random.rand(3, 3))
```

---

## 3. Pandas：灵活的数据处理与分析库

**Pandas** 构建在 NumPy 之上，为 Python 提供了快速、灵活且富有表现力的数据结构，旨在使“关系型”或“标签型”数据的处理既简单又直观。它是进行数据清洗和分析的核心工具。

### 主要数据结构
- **Series**：一维带标签的数组，可以存储任何数据类型。
- **DataFrame**：二维的表格型数据结构，包含一组有序的列，每列可以是不同的值类型（类似于 Excel 表格或 SQL 表）。

### 基本使用示例

```python
import pandas as pd

# 1. 创建 Series
s = pd.Series([10, 20, 30], index=['a', 'b', 'c'])
print("Series:\n", s)

# 2. 创建 DataFrame
data = {
    '姓名': ['张三', '李四', '王五'],
    '年龄': [25, 30, 28],
    '城市': ['北京', '上海', '广州']
}
df = pd.DataFrame(data)
print("\nDataFrame:\n", df)

# 3. 数据访问与基本操作
print("\n获取'姓名'列:\n", df['姓名'])
print("\n获取第一行数据:\n", df.iloc[0])

# 4. 基本统计信息
# 增加一列薪水
df['薪水'] = [8000, 12000, 10000]
print("\n描述性统计信息:\n", df.describe())
```

---

## 4. Matplotlib：经典的数据可视化库

**Matplotlib** 是 Python 中最常用的 2D 绘图库。它可以生成出版质量级别的图形，如折线图、散点图、柱状图、直方图等。通常我们会使用其子模块 `pyplot`，它提供了一套类似 MATLAB 的绘图 API。

### 主要特点
- 能够绘制各种高质量的静态、动态、交互式图表。
- 高度可定制化，可以精细控制图表的每一个元素（标题、坐标轴、图例、颜色等）。

### 基本使用示例

```python
import matplotlib.pyplot as plt
import numpy as np

# 准备数据
x = np.linspace(0, 10, 100) # 生成 0 到 10 之间的 100 个均匀分布的数
y1 = np.sin(x)
y2 = np.cos(x)

# 创建图形
plt.figure(figsize=(8, 5)) # 设置图表大小

# 绘制折线图
plt.plot(x, y1, label='sin(x)', color='blue', linestyle='-')
plt.plot(x, y2, label='cos(x)', color='red', linestyle='--')

# 添加图表元素
plt.title('Sin and Cos Waves') # 标题
plt.xlabel('X-axis')           # X轴标签
plt.ylabel('Y-axis')           # Y轴标签
plt.legend()                   # 显示图例
plt.grid(True)                 # 显示网格

# 显示图表
plt.show()
```

### 总结
这三个库通常配合使用：**NumPy** 提供底层数据结构和高效计算，**Pandas** 负责数据的读取、清洗、组织和分析，**Matplotlib** 则将分析结果以直观的图形展现出来。掌握这三个库是迈入 Python 数据分析和人工智能领域的第一步。