# typst-nku-lab-template
Typst 是可用于出版的可编程标记语言，拥有变量、函数与包管理等现代编程语言的特性，注重于科学写作 (science writing)，定位与 LaTeX 相似。

- **语法简洁**：上手难度跟 Markdown 相当，文本源码阅读性高，不会像 LaTeX 一样充斥着反斜杠与花括号。
- **编译速度快**：Typst 使用 Rust 语言编写，即 typ(e+ru)st，目标运行平台是WASM，即浏览器本地离线运行；也可以编译成命令行工具，采用一种增量编译算法和一种有约束的版面缓存方案，文档长度基本不会影响编译速度，且编译速度与常见 Markdown 渲染引擎渲染速度相当。
- **环境搭建简单**：不需要像 LaTeX 一样折腾几个 G 的开发环境，原生支持中日韩等非拉丁语言，无论是官方 Web App 在线编辑，还是使用 VS Code 安装插件本地开发，都是即开即用。
- **现代编程语言**：Typst 是可用于出版的可编程标记语言，拥有变量、函数、包管理与错误检查等现代编程语言的特性，同时也提供了闭包等特性，便于进行函数式编程。以及包括了 [标记模式]、{脚本模式} 与 $数学模式$ 等多种模式的作用域，并且它们可以不限深度地、交互地嵌套。并且通过 [包管理](https://typst-doc-cn.github.io/docs/packages/)，你不再需要像 TexLive 一样在本地安装一大堆并不必要的宏包，而是按需自动从云端下载。

Typst中文文档：https://typst-doc-cn.github.io/docs/chinese/

Typst官方文档：https://typst.app/docs/

Typst WebApp：https://typst.app/

------

这是一份用于NKU实验报告的typst模板，涵盖封面，目录，标题，代码块，公式等的不同风格。

### 使用方法

​	建议使用`vscode` + `tinymist`插件 + `typst preview`插件编写，使用模板如下：

1. 创建你的typst文件，比如main.typ

2. 将仓库的img文件夹，template.typ放入main.typ同目录下

3.  在main.typ插入如下代码：

	```javascript
	#import "template.typ": *
	
	#show: project.with(
	  course: "计算机网络",
	  lab_name: "TCP/IP实验",
	  stu_name: "丁真",
	  stu_num: "114514",
	  major: "土木工程",
	  department: "火星土木学院",
	  date: (2077, 1, 1),
	)
	```

4. 编写你自己的代码

其余内容详见`demo.typ.`

**声明**：**模板使用的代码借鉴了各大前辈的模板，在此感谢分享模板的前辈们！**

------

### 效果

![demo](demo.png)
