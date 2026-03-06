# 本网站的构建流程

- 文章的所有初始信息均在`md`文件夹中，以 Markdown 的格式撰写，每一个单独的 Markdown 文件都将被转换为一个单独的 HTML 文件。
- `build`文件夹中的`mdtohtml.ipynb`程序会使用 Pandoc 将 Markdown 文件转换为 HTML 文件，并将其存储在`html`文件夹中。
- `build`文件夹中的`mdtohtml.ipynb`程序会将`html/ba`中的两份`html`文件内容拼接在其上下，形成完整的 HTML 文件，并将其存储在`pages`文件夹中。
