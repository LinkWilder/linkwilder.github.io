# Python的标准库

Python 自带了丰富的标准库，无需额外安装即可使用。以下介绍一些最常用的标准库及其基本用法。

---

## 1. `os` — 操作系统接口

用于与操作系统交互，如文件路径操作、目录管理等。

```python
import os

# 获取当前工作目录
print(os.getcwd())

# 列出目录下的文件
print(os.listdir('.'))

# 创建 / 删除目录
os.makedirs('test_dir/sub_dir', exist_ok=True)
os.rmdir('test_dir/sub_dir')

# 路径拼接与判断
path = os.path.join('folder', 'file.txt')
print(os.path.exists(path))
print(os.path.isfile(path))
print(os.path.isdir('folder'))

# 获取文件名与扩展名
print(os.path.basename('/a/b/c.txt'))   # c.txt
print(os.path.splitext('file.tar.gz'))  # ('file.tar', '.gz')
```

---

## 2. `sys` — 系统相关参数与函数

```python
import sys

# 命令行参数
print(sys.argv)

# Python 版本
print(sys.version)

# 退出程序
sys.exit(0)

# 模块搜索路径
print(sys.path)
```

---

## 3. `json` — JSON 编解码

```python
import json

data = {'name': 'Alice', 'age': 25, 'hobbies': ['reading', 'coding']}

# 序列化：Python 对象 → JSON 字符串
json_str = json.dumps(data, ensure_ascii=False, indent=2)
print(json_str)

# 反序列化：JSON 字符串 → Python 对象
obj = json.loads(json_str)
print(obj['name'])

# 读写 JSON 文件
with open('data.json', 'w', encoding='utf-8') as f:
    json.dump(data, f, ensure_ascii=False, indent=2)

with open('data.json', 'r', encoding='utf-8') as f:
    loaded = json.load(f)
```

---

## 4. `datetime` — 日期与时间

```python
from datetime import datetime, timedelta

# 当前时间
now = datetime.now()
print(now)

# 格式化输出
print(now.strftime('%Y-%m-%d %H:%M:%S'))

# 字符串解析为 datetime
dt = datetime.strptime('2025-01-15 10:30:00', '%Y-%m-%d %H:%M:%S')

# 时间运算
tomorrow = now + timedelta(days=1)
diff = tomorrow - now
print(diff.total_seconds())
```

---

## 5. `re` — 正则表达式

```python
import re

text = 'Email: alice@example.com, bob@test.org'

# 查找所有匹配
emails = re.findall(r'[\w.]+@[\w.]+', text)
print(emails)  # ['alice@example.com', 'bob@test.org']

# 匹配与搜索
if re.match(r'\d+', '123abc'):
    print('以数字开头')

result = re.search(r'(\w+)@(\w+)', text)
if result:
    print(result.group(1))  # alice

# 替换
new_text = re.sub(r'\d+', '#', 'abc123def456')
print(new_text)  # abc#def#
```

---

## 6. `pathlib` — 面向对象的路径操作

`pathlib` 是 `os.path` 的现代替代方案，推荐在新代码中使用。

```python
from pathlib import Path

# 当前目录与路径拼接
p = Path.cwd() / 'folder' / 'file.txt'
print(p)

# 常用属性
print(p.name)      # file.txt
print(p.stem)      # file
print(p.suffix)    # .txt
print(p.parent)    # 当前目录/folder

# 遍历目录
for f in Path('.').glob('*.py'):
    print(f)

# 读写文件
p = Path('example.txt')
p.write_text('Hello, World!', encoding='utf-8')
content = p.read_text(encoding='utf-8')
```

---

## 7. `collections` — 高性能容器数据类型

```python
from collections import Counter, defaultdict, namedtuple

# Counter：计数器
words = ['apple', 'banana', 'apple', 'cherry', 'banana', 'apple']
counter = Counter(words)
print(counter.most_common(2))  # [('apple', 3), ('banana', 2)]

# defaultdict：带默认值的字典
dd = defaultdict(list)
dd['fruits'].append('apple')
dd['fruits'].append('banana')
print(dd)  # defaultdict(<class 'list'>, {'fruits': ['apple', 'banana']})

# namedtuple：具名元组
Point = namedtuple('Point', ['x', 'y'])
p = Point(3, 4)
print(p.x, p.y)
```

---

## 8. `math` — 数学函数

```python
import math

print(math.pi)          # 3.141592653589793
print(math.sqrt(16))    # 4.0
print(math.ceil(3.2))   # 4
print(math.floor(3.8))  # 3
print(math.log(100, 10))  # 2.0
print(math.gcd(12, 18))   # 6
```

---

## 9. `random` — 随机数生成

```python
import random

print(random.random())           # [0.0, 1.0) 随机浮点数
print(random.randint(1, 10))     # [1, 10] 随机整数
print(random.choice(['a', 'b', 'c']))  # 随机选一个

items = [1, 2, 3, 4, 5]
random.shuffle(items)            # 原地打乱
print(items)

print(random.sample(range(100), 5))  # 不重复抽样 5 个
```

---

## 10. `functools` — 高阶函数工具

```python
from functools import lru_cache, reduce, partial

# lru_cache：缓存函数结果，适合递归优化
@lru_cache(maxsize=128)
def fib(n):
    if n < 2:
        return n
    return fib(n - 1) + fib(n - 2)

print(fib(50))

# reduce：累积计算
result = reduce(lambda x, y: x * y, [1, 2, 3, 4, 5])
print(result)  # 120

# partial：固定部分参数
int_from_bin = partial(int, base=2)
print(int_from_bin('1010'))  # 10
```

---

## 11. `itertools` — 迭代器工具

```python
from itertools import chain, product, combinations, islice

# chain：连接多个可迭代对象
for x in chain([1, 2], [3, 4]):
    print(x, end=' ')  # 1 2 3 4

# product：笛卡尔积
for p in product('AB', '12'):
    print(p, end=' ')  # ('A','1') ('A','2') ('B','1') ('B','2')

# combinations：组合
for c in combinations('ABCD', 2):
    print(c, end=' ')  # ('A','B') ('A','C') ... ('C','D')

# islice：切片迭代器
for x in islice(range(100), 5, 10):
    print(x, end=' ')  # 5 6 7 8 9
```

---

## 12. `subprocess` — 子进程管理

```python
import subprocess

# 运行命令并获取输出
result = subprocess.run(['echo', 'Hello'], capture_output=True, text=True)
print(result.stdout)

# 检查返回码
result = subprocess.run(['python', '--version'], capture_output=True, text=True)
print(result.stdout.strip())
```

---

## 13. `logging` — 日志记录

```python
import logging

# 基本配置
logging.basicConfig(
    level=logging.DEBUG,
    format='%(asctime)s - %(levelname)s - %(message)s'
)

logging.debug('调试信息')
logging.info('一般信息')
logging.warning('警告信息')
logging.error('错误信息')
```

---

## 14. `hashlib` — 哈希摘要

```python
import hashlib

text = 'Hello, World!'

# MD5
print(hashlib.md5(text.encode()).hexdigest())

# SHA-256
print(hashlib.sha256(text.encode()).hexdigest())
```

---

## 15. `csv` — CSV 文件读写

```python
import csv

# 写入
with open('data.csv', 'w', newline='', encoding='utf-8') as f:
    writer = csv.writer(f)
    writer.writerow(['姓名', '年龄'])
    writer.writerow(['Alice', 25])
    writer.writerow(['Bob', 30])

# 读取
with open('data.csv', 'r', encoding='utf-8') as f:
    reader = csv.reader(f)
    for row in reader:
        print(row)
```
