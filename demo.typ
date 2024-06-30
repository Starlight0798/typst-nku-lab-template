#import "template.typ": *
#import "@preview/treet:0.1.1": *
#import "@preview/iconic-salmon-fa:1.0.0": *
#import "@preview/tablex:0.0.8": tablex, rowspanx, colspanx
#import "@preview/pinit:0.1.4": *
#import "@preview/colorful-boxes:1.3.1": *
#import "@preview/showybox:2.0.1": *
#import "@preview/conchord:0.2.0": *
#import "@preview/badgery:0.1.1": *
#import "@preview/riesketcher:0.2.0": riesketcher
#import "@preview/syntree:0.2.0": syntree
#import "@preview/physica:0.9.3": *
#import "@preview/mitex:0.2.4": *
#import "@preview/easytable:0.1.0": easytable, elem
#import elem: *
#import "@preview/algo:0.3.3": algo, i, d, comment, code
#import "@preview/diagraph:0.2.1": *
#import "@preview/xarrow:0.3.0": xarrow, xarrowSquiggly, xarrowTwoHead
#import "@preview/neoplot:0.0.1" as gp
#import "@preview/pyrunner:0.1.0" as py
#import "@preview/note-me:0.2.1" as nt

#show: project.with(
  course: "计算机网络",
  lab_name: "TCP/IP实验",
  stu_name: "丁真",
  stu_num: "114514",
  major: "土木工程",
  department: "火星土木学院",
  date: (2077, 1, 1),
  show_content_figure: true,
  watermark: "NKU",
)

#let mytest = [通过这次实验，我深刻体会到了同态加密技术的强大和实用性，特别是在保护数据隐私的同时执行复杂计算的能力。使用Microsoft SEAL库进行加密计算不仅加深了我对同态加密原理的理解，也提升了我的编程技能和解决实际问题的能力。]

#let mycode = ```cpp
void MergeSort(int arr[], int left, int right) {
  if(left >= right) return;
  int mid = (left + right) >> 1;
  MergeSort(arr, left, mid);
  MergeSort(arr, mid + 1, right);
  int i = left, j = mid + 1, k = 0, temp[right - left + 1];
  while(i <= mid && j <= right) {
    if(arr[i] <= arr[j]) temp[k++] = arr[i++];
    else temp[k++] = arr[j++];
  }
  while(i <= mid) temp[k++] = arr[i++];
  while(j <= right) temp[k++] = arr[j++];
  for(int i = 0; i < k; i++) arr[left + i] = temp[i];
}
```

= 一级标题
#text(size: 15pt)[
  整理了在实验报告可能用到的任何元素，*包括图表(及其编号)，树状图，代码块，数学公式，高亮，样式内容块*等。
]\
#lorem(20) \
测试中文:\
#indent() _#mytest _

分点：
+ _#lorem(10) _
+ _#lorem(10) _

- _#lorem(10) _
- _#lorem(10) _
- test#footnote[测试脚注]

terms:
/ Fact: If a term list has a lot
  of text, and maybe other inline
  content.

/ Tip: To make it wide, simply
  insert a blank line between the
  items.

#box(stroke: 3pt + gradient.conic(..color.map.magma), outset: 5pt)[测试文本] #h(2em)
#box(stroke: 3pt + gradient.linear(..color.map.magma), outset: 5pt)[测试文本] #h(2em)
#box(stroke: 3pt + gradient.radial(..color.map.crest), outset: 5pt)[测试文本] #h(2em)
#box(stroke: 3pt + gradient.linear(..color.map.rainbow).sharp(8, smoothness: 20%), outset: 5pt)[测试文本] #h(2em) \

#v(1em)

#box(fill: blue.lighten(50%), radius: 10pt, outset: 5pt)[测试文本] #h(2em)
#box(fill: red.lighten(50%), radius: 10pt, outset: 5pt)[测试文本] #h(2em)
#box(fill: yellow.lighten(50%), radius: 10pt, outset: 5pt)[测试文本] #h(2em)

#rect(fill: blue.lighten(50%), radius: 10pt)[测试文本]
#rect(fill: red.lighten(50%), radius: 10pt)[测试文本]

#link(<mylink>)[点击跳转链接] \
_这是一个被强调的内容_ \



== 二级标题

#lorem(20)
#figure(image("./img/NKU-logo.png", width: 10%), caption: "南开大学校徽")

== 测试treet

树状图：\
#tree-list[
  - 1
    - 1.1
      - 1.1.1
    - 1.2
      - 1.2.1
        - 1.2.2.1
  - 2
  - 3
    - 3.1
      - 3.1.1
] <mylink>

#text(
  red,
  tree-list(
    marker: text(blue)[├── ],
    last-marker: text(aqua)[└── ],
    indent: text(teal)[│#h(1.5em)],
    empty-indent: h(2em),
  )[
    - 1
      - 1.1
        - 1.1.1
      - 1.2
        - 1.2.1
          - 1.2.2.1
    - 2
    - 3
      - 3.1
        - 3.1.1
  ],
)

== 测试iconic-salmon-fa
#github-info("Bi0T1N", url: "https://www.xing.com/pages/claas")
#h(1cm)
#github-info("Bi0T1N", rgb("#ab572a"))
#h(1cm)
#github-info("Bi0T1N", green)


== 测试badgery
#badge-gray("Gray badge")
#badge-red("Red badge")
#badge-yellow("Yellow badge") \
#badge-green("Green badge")
#badge-blue("Blue badge")
#badge-purple("Purple badge")
#ui-action("Click me")
#menu("File", "New File...")
#menu("Menu", "Sub-menu", "Sub-sub menu", "Action")


== 测试gentle
// info clue
#info[ This is the info clue ... ]
// or a tip
#tip(title: "这是一个测试标题")[Check out this cool package]
#question[ This is the info clue ... ]
#quote[ This is the info clue ... ]
#example[ This is the info clue ... ]
#abstract[ This is the info clue ... ]
#task[ This is the info clue ... ]
#error[ This is the info clue ... ]
#warning[ This is the info clue ... ]
#success[ This is the info clue ... ]
#conclusion[ This is the info clue ... ]
#memo[ This is the info clue ... ]
#clue(title: none, icon: none, accent-color: orange)[We should run more tests!]

== 测试note-me
#nt.note[
  Highlights information that users should take into account, even when skimming.
]
#nt.tip[
  Optional information to help a user be more successful.
]
#nt.important[
  Crucial information necessary for users to succeed.
]
#nt.warning[
  Critical content demanding immediate user attention due to potential risks.
]
#nt.caution[
  Negative potential consequences of an action.
]
#nt.todo[
  Fix `note-me` package.
]

== 测试colorbox
#colorbox(title: lorem(5), color: "blue")[
  #lorem(30)
]

#slanted-colorbox(title: lorem(5), color: "default")[
  #lorem(30)
]

#outline-colorbox(title: lorem(5))[
  #lorem(30)
]

#outline-colorbox(title: lorem(5), centering: true, color: "green")[
  #lorem(50)
]

== 测试showybox
// First showybox
①
#showybox(
  frame: (border-color: red.darken(50%), title-color: red.lighten(70%), body-color: red.lighten(90%)),
  title-style: (color: black, weight: "regular", align: center),
  shadow: (offset: 3pt),
  title: "Red-ish showybox with separated sections!",
  lorem(20),
  lorem(12),
)

// Second showybox
②
#showybox(
  title-style: (
    boxed-style: (anchor: (x: center, y: horizon), radius: (top-left: 10pt, bottom-right: 10pt, rest: 0pt)),
  ),
  frame: (
    title-color: blue,
    body-color: white,
    footer-color: blue.lighten(80%),
    border-color: blue.darken(60%),
    radius: (top-left: 10pt, bottom-right: 10pt, rest: 0pt),
  ),
  title: "Clairaut's theorem",
  footer: text(
    size: 10pt,
    weight: 600,
    emph("This will be useful every
                                                              time you want to interchange partial derivatives in the future."),
  ),
)[
  Let $f: A arrow RR$ with $A subset RR^n$ an open set such that its cross derivatives of any order exist and are
  continuous in $A$. Then for any point $(a_1, a_2, ..., a_n) in A$ it is true that
  $
    frac(diff^n f, diff x_i ... diff x_j)(a_1, a_2, ..., a_n) =
    frac(diff^n f, diff x_j ... diff x_i)(a_1, a_2, ..., a_n)
  $
]

③
#showybox(
  frame: (border-color: blue.darken(50%), title-color: blue.lighten(80%), body-color: white),
  title-style: (color: black, weight: "regular", align: center),
  shadow: (offset: 5pt),
  title: lorem(3),
  lorem(10),
  [#align(left)[
      #grid(
        columns: 2,
        gutter: 5pt,
        rows: auto,
        lorem(30), lorem(30),
      )
    ]
  ],
)

④
#showybox(
  footer-style: (sep-thickness: 0pt, align: right, color: black),
  title: "Divergence theorem",
  footer: [
    In the case of $n=3$, $V$ represents a volumne in three-dimensional space, and $diff V = S$ its surface
  ],
)[
  Suppose $V$ is a subset of $RR^n$ which is compact and has a piecewise smooth boundary $S$ (also indicated with $diff V = S$).
  If $bold(F)$ is a continuously differentiable vector field defined on a neighborhood of
  $V$, then:
  $
    integral.triple_V (bold(nabla) dot bold(F)) dif V = integral.surf_S
    (bold(F) dot bold(hat(n))) dif S
  $
]

⑤
#showybox(
  title: "Parent container",
  lorem(10),
  columns(2)[
    #showybox(title-style: (boxed-style: (:)), title: "Child 1", lorem(10))
    #colbreak()
    #showybox(title-style: (boxed-style: (:)), title: "Child 2", lorem(10))
  ],
)

== 测试syntree
#figure(
  caption: "Example of a syntax tree.",
  syntree(
    nonterminal: (fill: blue),
    terminal: (style: "italic"),
    "[S [NP [Det the] [Nom [Adj little] [N bear]]] [VP [VP [V saw] [NP [Det the] [Nom [Adj] [Adj] [N ]]]] [PP [P in] [^NP the brook]]]]",
  ),
)

== 测试easytable
#figure(
  easytable({
    let th = th.with(trans: emph)
    let tr = tr.with(cell_style: (x: none, y: none) => (
      fill: if calc.even(y) {
        luma(95%)
      } else {
        none
      },
    ))
    cstyle(center, center, center)
    th[Header 1][Header 2][Header 3]
    tr[How][I][want]
    tr[a][drink,][alcoholic]
    tr[of][course,][after]
    tr[the][heavy][lectures]
    tr[involving][quantum][mechanics.]
  }),
  caption: [表格示例],
  supplement: [表],
)

#easytable({
  cwidth(100pt, 1fr, 20%)
  cstyle(left, center, right)
  th[Header 1 ][Header 2][Header 3 ]
  tr[How ][I ][want ]
  tr[a ][drink, ][alcoholic ]
  tr[of ][course, ][after ]
  tr[the ][heavy ][lectures ]
  tr[involving][quantum ][mechanics.]
})

#figure(
  caption: [表格示例],
  easytable({
    let tr = tr.with(trans: pad.with(x: 3pt))

    th[Header 1][Header 2][Header 3]
    tr[How][I][want]
    tr[a][drink,][alcoholic]
    tr[of][course,][after]
    tr[the][heavy][lectures]
    tr[involving][quantum][mechanics.]
  }),
)

== 测试tablex
#figure(
  supplement: [表],
  caption: "一个表格",
  tablex(
  columns: 4,
  align: center + horizon,
  auto-vlines: false,
  // indicate the first two rows are the header
  // (in case we need to eventually
  // enable repeating the header across pages)
  header-rows: 2,
  // color the last column's cells
  // based on the written number
  map-cells: cell => {
    if cell.x == 3 and cell.y > 1 {
      cell.content = {
        let value = int(cell.content.text)
        let text-color = if value < 10 {
          red.lighten(30%)
        } else if value < 15 {
          yellow.darken(13%)
        } else {
          green
        }
        set text(text-color)
        strong(cell.content)
      }
    }
    cell
  },
  /* --- header --- */
  rowspanx(2)[*Username*],
  colspanx(2)[*Data*],
  (),
  rowspanx(2)[*Score*],
  (),
  [*Location*],
  [*Height*],
  (),
  /* -------------- */
  [John],
  [Second St.],
  [180 cm],
  [5],
  [Wally],
  [Third Av.],
  [160 cm],
  [10],
  [Jason],
  [Some St.],
  [150 cm],
  [15],
  [Robert],
  [123 Av.],
  [190 cm],
  [20],
  [Other],
  [Unknown St.],
  [170 cm],
  [25],
),
)

== 测试codly
```rust
pub fn main() {
    println!("Hello, world!");
}
```
#mycode

== 测试cheq

- [ ] Mercury
- [x] Mars
- [ ] Jupiter
- [x] Sun


== 测试pyrunner
#let compiled = py.compile(
```python
def find_emails(string):
    import re
    return re.findall(r"\b[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\b", string)

def sum_all(*array):
    return sum(array)
```)

#let txt = "My email address is john.doe@example.com and my friend's email address is jane.doe@example.net."

#py.call(compiled, "find_emails", txt)
#py.call(compiled, "sum_all", 1, 2, 3)


== 测试pinit

#text(size: 16pt)[
  A simple #pin(1)highlighted text#pin(2).

]
#pinit-highlight(1, 2)
#pinit-point-from(2)[It is simple.]

== 测试neoplot
#figure(caption: [测试图片],
  image.decode(
      gp.eval("
          set samples 1000;
          set xlabel 'x axis';
          set ylabel 'y axis';
          plot sin(x),
              cos(x)
      ")
  )
)

== 测试riesketcher
#canvas({
  riesketcher(x => calc.pow(x, 3) + 4, method: "left", start: -3.1, end: 3.5, n: 10, plot-x-tick-step: 1)
})


== 测试physica
$
  A^T, curl vb(E) = - pdv(vb(B), t),
  quad
  tensor(Lambda,+mu,-nu) = dmat(1,RR),
  quad
  f(x,y) dd(x,y),
  quad
  dd(vb(x),y,[3]),
  quad
  dd(x,y,2,d:Delta,p:and),
  quad
  dv(phi,t,d:upright(D)) = pdv(phi,t) + vb(u) grad phi \
  H(f) = hmat(f;x,y;delim:"[",big:#true),
  quad
  vb(v^a) = sum_(i=1)^n alpha_i vu(u^i),
  quad
  Set((x, y), pdv(f,x,y,[2,1]) + pdv(f,x,y,[1,2]) < epsilon) \
  -1 / c^2 pdv(,t,2)psi + laplacian psi = (m^2c^2) / hbar^2 psi,
  quad
  ket(n^((1))) = sum_(k in.not D) mel(k^((0)), V, n^((0))) / (E_n^((0)) - E_k^((0))) ket(k^((0))),
  quad
  integral_V dd(V) (pdv(cal(L), phi) - diff_mu (pdv(cal(L), (diff_mu phi)))) = 0 \
  dd(s,2) = -(1-(2G M) / r) dd(t,2) + (1-(2G M) / r)^(-1) dd(r,2) + r^2 dd(Omega,2)
$

$
  "clk:" & signals("|1....|0....|1....|0....|1....|0....|1....|0..", step: #0.5em) \
  "bus:" & signals(" #.... X=... ..... ..... X=... ..... ..... X#.", step: #0.5em)
$

== 测试mitex
#mitex(`
  \newcommand{\f}[2]{#1f(#2)}
  \f\relax{x} = \int_{-\infty}^\infty
    \f\hat\xi\,e^{2 π i ξ x}
    \,d\xi
`)

== 测试pintora
```pintora
mindmap
@param layoutDirection TB
+ UML Diagrams
++ Behavior Diagrams
+++ Sequence Diagram
+++ State Diagram
+++ Activity Diagram
++ Structural Diagrams
+++ Class Diagram
+++ Component Diagram
```

== 测试unify

$ num("-1.32865+-0.50273e-6") $
$ qty("1.3+1.2-0.3e3", "erg/cm^2/s", space: "#h(2mm)") $
$ numrange("1,1238e-2", "3,0868e5", thousandsep: "'") $
$ qtyrange("1e3", "2e3", "meter per second squared", per: "/", delimiter: "\"to\"") $


== 测试algo
#algo(
  title: [ // note that title and parameters
    #set text(size: 15pt) // can be content
    #emph(smallcaps("Fib"))
  ],
  parameters: ([#math.italic("n")],),
  comment-prefix: [#sym.triangle.stroked.r ],
  comment-styles: (fill: rgb(100%, 0%, 0%)),
  indent-size: 15pt,
  indent-guides: 1pt + gray,
  row-gutter: 5pt,
  column-gutter: 5pt,
  inset: 5pt,
  stroke: 2pt + black,
  fill: none,
)[
  if $n < 0$:#i\
  return null#d\
  if $n = 0$ or $n = 1$:#i\
  return $n$#d\
  \
  let $x <- 0$\
  let $y <- 1$\
  for $i <- 2$ to $n-1$:#i #comment[so dynamic!]\
  let $z <- x+y$\
  $x <- y$\
  $y <- z$#d\
  \
  return $x+y$
]

#algo(title: "Floyd-Warshall", parameters: ("V", "E", "w"), indent-guides: 1pt + black, main-text-styles: (size: 15pt))[
  Let $"dist"[u,v] <- infinity$ for $u,v$ in $V$\
  For $(u,v)$ in $E$:#i\
  $"dist"[u,v] <- w(u,v)$ #comment[edge weights] #d\
  For $v$ in $V$:#i\
  $"dist"[v,v] <- 0$ #comment[base case] #d\
  \
  For $k <- 1$ to $|V|$:#i\
  For $i <- 1$ to $|V|$:#i\
  For $j <- 1$ to $|V|$:#i\
  #comment(inline: true)[if new path is shorter, reduce distance]\
  If $"dist"[i,j] > "dist"[i,k] + "dist"[k,j]$:#i\
  $"dist"[i,j] <- "dist"[i,k] + "dist"[k,j]$#d#d#d#d\
  \
  Return $"dist"$
]

== 测试diagraph
#raw-render(
  ```
  digraph {
    rankdir=LR
    node[shape=circle]
    Hmm -> a_0
    Hmm -> big
    a_0 -> "a'" -> big [style="dashed"]
    big -> sum
  }
  ```,
  labels: (big: [_some_#text(2em)[ big ]*text*], sum: $ sum_(i=0)^n 1 / i $),
  width: 100%,
)

== 测试xarrow
$
  a xarrow(sym: <--, QQ\, 1 + 1^4) b \
  c xarrowSquiggly("very long boi") d \
  c / ( a xarrowTwoHead("NP" limits(sum)^*) b times 4)
$

测试参考文献：\
文献1的内容@impagliazzo2001problems \
文献2的内容@Burckhardt:2013
#bibliography("works.bib", title: [参考文献])


#hide()[
😀😃😄😁😆😅🤣😂🙂🙃😉😊😇🥰😍🤩😘😚😙😋😛😜🤪😝🤑🤗🤭🤫🤔🤐🤨😐😑😶😏😒🙄😬🤥😌😔😪🤤😴😷🤒🤕🤢🤮🤧🥵🥶🥴😵🤯🤠🥳😎🤓🧐😕😟🙁☹️😮😯😲😳🥺😦😧😨😰😥😢😭😱😖😣😞😓😩😫🥱😤😡😠🤬
👶🧒👦👧🧑👱👨🧔👨‍🦰👨‍🦱👨‍🦳👨‍🦲👩👩‍🦰🧑👩‍🦱🧑👩‍🦳🧑👩‍🦲🧑👱‍♀️👱‍♂️🧓👴👵🙍🙍‍♂️🙍‍♀️🙎🙎‍♂️🙎‍♀️🙅🙅‍♂️🙅‍♀️🙆🙆‍♂️🙆‍♀️💁💁‍♂️💁‍♀️🙋🙋‍♂️🙋‍♀️🧏🧏‍♂️🧏‍♀️🙇🙇‍♂️🙇‍♀️🤦‍♂️🤦‍♀️🤷‍♀️👨‍⚕️👩‍⚕️👨‍🎓👩‍🎓🧑‍🏫👋🤚🖐️✋🖖👌🤏✌️🤞🤟🤘🤙👈👉👆🖕👇☝️👍👎✊👊🤛🤜👏🙌👐🤲🤝🙏✍️💅🤳💪💌💎🔪💈🚪🚽🚿🛁⌛⏳⌚⏰🎈🎉🎊🎎🎏🎐🎀🎁📯📻📱📲☎📞📟📠🔋🔌💻💽💾💿📀🎥📺📷📹📼🔍🔎🔬🔭📡💡🔦🏮📔📕📖📗📘📙📚📓📃📜📄📰📑🔖💰💴💵💶💷💸💳✉📧📨📩📤📥📦📫📪📬📭📮📝📁📂📅📆📇📈📉📊📋📌📍📎📏📐✂🔒🔓🔏🔐🔑🔨🔫🔧🔩🔗💉💊🚬🔮🚩🎌💦💨🎟️🎫🎖️🏆🏅🥇🥈🥉⚽⚾🥎🏀🏐🏈🏉🎾🥏🎳🏏🏑🏒🥍🏓🏸🥊🥋🥅⛳⛸️🎣🎽🎿🛷🥌🎯🎱🎮🎰🎲🧩♟️🎭🎨🧵🧶🎼🎤🎧🎷🎸🎹🎺🎻🥁🎬🏹]
