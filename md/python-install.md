# Python的安装

在开始 Python 编程之旅前，我们需要搭建一个好用的开发环境。本指南将指导你如何在 Windows 系统下安装 Python，并配置两款最受喜爱的开发工具：Visual Studio Code (VS Code) 和 Jupyter Notebook。

## 1. 安装 Python (Windows)

1. **下载安装包**：
   - 访问 Python 官方下载页面：[https://www.python.org/downloads/windows/](https://www.python.org/downloads/windows/)
   - 选择最新的稳定版本（通常推荐 Python 3.x 版本）。
   - 下载对应的 **Windows installer (64-bit)**。

2. **运行安装程序**：
   - 双击下载好的 `.exe` 安装包。
   - **【重要步骤】** 在安装界面底部，**务必勾选 “Add python.exe to PATH”**（将 Python 添加到系统环境变量）。这一步非常关键，它允许你在命令行中直接运行 Python。
   - 点击 “Install Now”（立即安装）进行默认安装，或者选择 “Customize installation”（自定义安装）来修改安装路径。

3. **验证安装**：
   - 按下 `Win + R` 键，输入 `cmd` 并回车，打开命令提示符。
   - 输入 `python --version`，如果显示出 Python 的版本号，说明安装成功。
   - 输入 `pip --version`，确认 Python 的包管理工具 pip 也已成功安装。

---

## 2. 安装与配置 Visual Studio Code (VS Code)

VS Code 是一款由微软开发的免费、开源且极其强大的轻量级代码编辑器，是目前最流行的 Python 开发工具之一。

1. **下载与安装**：
   - 访问官网：[https://code.visualstudio.com/](https://code.visualstudio.com/)
   - 下载 Windows 版本的安装程序并运行，按照提示完成安装。

2. **安装 Python 扩展**：
   - 打开 VS Code。
   - 点击左侧边栏的“扩展”（Extensions）图标，或者按快捷键 `Ctrl+Shift+X`。
   - 在搜索框中输入 `Python`。
   - 找到由 Microsoft 提供的官方 Python 扩展，点击“安装”（Install）。
   - 这个扩展提供了代码自动补全、语法高亮、代码格式化、调试等强大的功能。

3. **运行第一段 Python 代码**：
   - 在 VS Code 中新建一个文件，保存为 `hello.py`。
   - 输入代码：`print("Hello, Python!")`。
   - 点击右上角的三角形运行按钮，或者在终端中输入 `python hello.py`，你将在终端看到输出结果。

---

## 3. 安装与使用 Jupyter Notebook

Jupyter Notebook 是一个基于网页的交互式计算环境，允许你将代码、文本注释、数学公式和图表组合在同一个文档中。它在数据分析、机器学习和教学领域极为受欢迎。

1. **通过 pip 安装 Jupyter**：
   - 打开命令提示符 (`cmd`)。
   - 输入以下命令并回车安装 Jupyter：
     ```bash
     pip install jupyter
     ```
   - 建议同时安装上述提到的常用的数据分析包，如 `pip install numpy pandas matplotlib`。

2. **启动 Jupyter Notebook**：
   - 在命令提示符中输入：
     ```bash
     jupyter notebook
     ```
   - 这将启动 Jupyter 服务，并自动在你的默认浏览器中打开一个新的标签页，显示 Jupyter 的控制台界面。

3. **创建和编写 Notebook**：
   - 在 Jupyter 界面右上角点击 “New” -> “Python 3” (或你的 Python 内核名称)。
   - 这会创建一个新的 `.ipynb` 结尾的笔记本文件。
   - 在单元格 (Cell) 中输入代码，例如 `print("Hello, Jupyter!")`。
   - 按下 `Shift + Enter` 运行该单元格的代码，结果会直接显示在单元格下方。
   - 你还可以将单元格的类型更改为 “Markdown”，用来编写类似本教程这样的说明性文字。

### 小结
- **Python** 是核心语言环境。
- **VS Code** 适合编写中大型项目、脚本开发和调试。
- **Jupyter Notebook** 适合数据探索、数据分析和可视化展示。
