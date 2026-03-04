# LaTeX 简介与基础指南

## 1. 什么是 LaTeX？
LaTeX 是一种基于 TeX 的排版系统，广泛用于生成高印刷质量的科技和数学类文档。与 Word 等“所见即所得”（WYSIWYG）的文字处理软件不同，LaTeX 采用“所见即所想”（WYSIWYM）的方式——用户通过纯文本加上标记命令来编写文档，由编译器最终生成排版精美的 PDF 文件。

## 2. 为什么选择 LaTeX？
- **公式排版**：拥有无与伦比的复杂数学公式排版能力。
- **自动化管理**：自动生成和处理目录、交叉引用、脚注、参考文献、图表编号等。
- **样式统一**：内容与样式分离，只需更改文档类即可改变全局样式，让你更专注于内容创作。
- **纯文本格式**：文件极小，完美契合 Git 等版本控制系统，且长文档编辑不易卡顿或崩溃。

## 3. 基本文档结构
一个标准的 LaTeX 文档通常包含**导言区**（Preamble）和**正文区**（Body）：

```latex
\documentclass[12pt, a4paper]{article} % 导言区：定义文档类和全局设置

\usepackage{amsmath} % 引入宏包，提供更多数学功能
\usepackage{graphicx} % 提供插图功能
\usepackage{ctex} % 支持中文排版

\title{我的第一篇 LaTeX 文档}
\author{作者姓名}
\date{\today}

\begin{document} % 正文区开始

\maketitle % 生成标题信息

\section{引言}
这里是正文内容，Hello World! 欢迎来到 LaTeX 的世界。

\end{document} % 正文区结束
```

## 4. 常用语法与命令

### 4.1 文本格式化
- **加粗**：`\textbf{加粗文本}`
- *斜体*：`\textit{斜体文本}`
- 强调文字：`\emph{强调文字}`
- 换行：连续两个回车（空一行）表示新起一段；`\\` 表示强制换行但不换段落。

### 4.2 章节层级
LaTeX 会自动为这些章节编号：
```latex
\section{一级标题}
\subsection{二级标题}
\subsubsection{三级标题}
```

### 4.3 列表环境
**无序列表：**
```latex
\begin{itemize}
    \item 苹果
    \item 香蕉
\end{itemize}
```

**有序列表：**
```latex
\begin{enumerate}
    \item 第一步
    \item 第二步
\end{enumerate}
```

### 4.4 数学公式
LaTeX 最强大的功能是数学公式排版。
- **行内公式**：使用 `$` 包裹，例如 `$E = mc^2$`，排版在文字中间。
- **行间公式**：单独占据一行，居中显示。使用 `\[ ... \]`（无编号）或 `equation` 环境（有编号）。

```latex
\begin{equation}
    f(x) = \int_{-\infty}^{\infty} \hat{f}(\xi)\,e^{2 \pi i \xi x} \,d\xi
\end{equation}
```
*常用数学符号：分数 `\frac{a}{b}`，上标 `x^2`，下标 `a_1`，求和 `\sum_{i=1}^{n}`。*

### 4.5 插入图片
需要引入 `graphicx` 宏包：
```latex
\begin{figure}[htbp]
    \centering % 图片居中
    \includegraphics[width=0.8\textwidth]{image.png} % 插入图片并设置宽度
    \caption{这是一张图片的标题} % 图片标题
    \label{fig:my_image} % 标签，用于交叉引用：\ref{fig:my_image}
\end{figure}
```

## 5. 常用编辑器与编译环境
要使用 LaTeX，你需要一个**编译器**（将代码转为 PDF）和一个**编辑器**（写代码的软件）：

- **在线平台**：[Overleaf](https://www.overleaf.com/)（极度推荐新手使用，免去本地环境配置的烦恼，开箱即用，支持多人协作）。
- **本地编译环境**：TeX Live（跨平台，推荐完整安装）、MiKTeX（Windows）、MacTeX（macOS）。
- **本地编辑器**：VS Code（配合 LaTeX Workshop 插件使用体验极佳）、TeXStudio、TeXmaker 等。
