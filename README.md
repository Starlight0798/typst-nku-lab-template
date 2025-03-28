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

_这是一份用于NKU实验报告的typst模板，涵盖封面，目录，标题，代码块，公式等内容。_
如果其他学校的同学想要使用这个模板，很简单，只需要把img目录下的两张图片换成自己学校的即可。

### 使用方法

​	使用模板方法如下：

1. 创建你的typst文件，比如main.typ

2. 将仓库的img文件夹，template.typ放入main.typ同目录下

3.  在main.typ插入如下代码：

	```javascript
	#import "template.typ": *
	#import XXX  // 这里引入你需要使用的其他包(若干)，参照demo.typ
	
	#show: project.with(
	  course: "计算机网络",
	  lab_name: "TCP/IP实验",
	  stu_name: "丁真",
	  stu_num: "114514",
	  major: "土木工程",
	  department: "火星土木学院",
	  date: (2077, 1, 1),
	  show_content_figure: True	 // 是否在目录页加上图表的索引
	  watermark: "NKU",  		// 水印，不写或写空字符串则无水印
	)
	```

4. 编写你自己的代码

另外，实验报告可能需要用到不同样式的表格，图片，流程图，代码块等，这些详见`demo.typ`，里面都有使用示例，基本都是调用各个库来完成效果，避免重复造轮子。

### 编写

建议使用`vscode` + `tinymist`插件编写，tinymist插件的preview可以让你编写的过程达到**实时同步**的效果(**编译速度优于Latex**)，tinymist插件有诸多使用特性，不多赘述。

![image-20240427141053306](assets/image-20240427141053306.png)

#### 示例

*<u>此部分针对不熟悉typst的用户，熟悉者可以跳过。</u>*

比如你想要画像demo.typ里面的这样一个**丰富内容块**：

<img src="assets/image-20240427141309450.png" alt="image-20240427141309450" style="zoom: 80%;" />

那么首先需要在你的main.typ中顶部引入包，具体是哪个包，我在demo中二级标题都有注明：

```js
#import "@preview/colorful-boxes:1.4.2": *
```

然后在你需要放置的部分加入以下代码：

```typescript
#colorbox(title: [这是一段测试标题], color: "blue")[
  这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字
]
```

> 如果你找不到代码，建议使用`preview`功能进行实时预览，这样你直接点击你想要的组件，就会自动跳转到对应的代码(虽然很多时候是跳转到组件库内部…)。

效果如下，当然color可以自己调：

<img src="assets/image-20240427141525685.png" alt="image-20240427141525685" style="zoom: 80%;" />

其余任何组件同理。

**(注：codly等包我在模板文件已经引入，无需再次引入)**

------

### 效果

![demo](demo.png)
