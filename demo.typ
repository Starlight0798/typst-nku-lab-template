#import "imports.typ": *
#import "template.typ": project, indent

#show: project.with(
  course: "计算机网络",
  lab_name: "TCP/IP实验",
  stu_name: "丁真",
  stu_num: "114514",
  major: "土木工程",
  department: "火星土木学院",
  date: (2077, 1, 1),
  show_content_figure: true,
  watermark: "ZJU",
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
#figure(image("./img/ZJU-logo.png", width: 10%), caption: "浙江大学校徽")

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

== 测试tblr
#let pop = from-csv("
China,1313,9596,136.9
India,1095,3287,333.2
United States,298,9631,31.0
Indonesia,245,1919,127.9
Brazil,188,8511,22.1
Pakistan,165,803,206.2
Bangladesh,147,144,1023.4
Russia,142,17075,8.4
Nigeria,131,923,142.7"
)

#context tblr(header-rows: 1, columns: 4,
  align: (left+bottom, center, center, center),
  // formatting directives
  rows(within: "header", 0, fill: aqua.lighten(60%), hooks: strong),
  cols(within: "body", 0, fill: gray.lighten(70%), hooks: strong),
  rows(within: "body", 1, 6, hooks: text.with(red)),
  cells(((2, -3), end), hooks: strong),
  col-apply(within: "body", span(1, end), decimal-align), 
  note((-3, 3), "Highest value"),
  // content
  [Country], [Population \ (millions)],[Area\ (1000 sq. mi.)],[Pop. Density\ (per sq. mi.)],
  ..pop
)

#tblr(header-rows: 1, 
  table-fun: ztable,
  align: (left+bottom, center, center, center),
  // ztable formatting
  format: (none, auto, auto, auto),
  // formatting directives
  rows(within: "header", 0, fill: blue, hooks: (strong, text.with(white))),
  rows(within: "body", calc.even, fill: gray.lighten(80%)),
  // content
  [Country], [Population \ (millions)],[Area\ (1000 sq. mi.)],[Pop. Density\ (per sq. mi.)],
  ..pop
)

#tblr(columns: 7, header-rows: 2,
  stroke: none,
  // combine header cells
  cells((0, (1,4)), colspan: 3, stroke: (bottom: 0.03em)),
  column-gutter: 0.6em,
  // booktabs style rules
  rows(within: "header", auto, inset: (y: 0.5em)),
  rows(within: "header", auto, align: center),
  hline(within: "header", y: 0, stroke: 0.08em),
  hline(within: "header", y: end, position: bottom, stroke: 0.05em),
  rows(within: "body", 0, inset: (top: 0.5em)),
  hline(y: end, position: bottom, stroke: 0.08em),
  rows(end, inset: (bottom: 0.5em)),
  // table notes, remarks, and caption
  note((1, (1,4)), [$m v$ is in kg·m².]),
  note((1, (3,6)), [Time is in secs.]),
  note(sym.dagger, (2, 0), [Another note.]),
  remarks: [_Note:_ ] + lorem(18),
  note-fun: x => super(text(fill: blue, x)),
  note-numbering: "a",
  // content
  [], [tol $= mu_"single"$], [], [], [tol $= mu_"double"$], [], [],
  [], [$m v$], [Rel.~err], [Time], [$m v$], [Rel.~err], [Time], 
  [trigmv],  [11034], [1.3e-7], [3.9], [15846], [2.7e-11], [5.6], 
  [trigexpmv], [21952], [1.3e-7], [6.2], [31516], [2.7e-11], [8.8], 
  [trigblock], [15883], [5.2e-8], [7.1], [32023], [1.1e-11], [1.4e1], 
  [expleja], [11180], [8.0e-9], [4.3], [17348], [1.5e-11], [6.6])
  
#pagebreak()

== 测试mannot
$
  markul(p_i, tag: #<p>) = markrect(
    exp(- mark(beta, tag: #<beta>, color: #red) mark(E_i, tag: #<E>, color: #green)),
    tag: #<Boltzmann>, color: #blue,
  ) / markhl(sum_j exp(- beta E_j), tag: #<Z>)

  #annot(<p>, pos: bottom + left)[Probability of \ state $i$]
  #annot(<beta>, pos: top + left, dy: -1.5em, leader-connect: "elbow")[Inverse temperature]
  #annot(<E>, pos: top + right, dy: -1em)[Energy]
  #annot(<Boltzmann>, pos: top + left)[Boltzmann factor]
  #annot(<Z>)[Partition function]
$

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

== 测试iconic-salmon-svg
This project was created by #github-info("Bi0T1N"). You can also find me on #gitlab-info("GitLab", rgb("#811052"), url: "https://gitlab.com/Bi0T1N").

== 测试finite
#automaton((
  q0: (q1:0, q0:"0,1"),
  q1: (q0:(0,1), q2:"0"),
  q2: (),
))

== 测试cetz
#let f1(x) = calc.sin(x)
#let fn = (
  ($ x - x^3"/"3! $, x => x - calc.pow(x, 3)/6),
  ($ x - x^3"/"3! - x^5"/"5! $, x => x - calc.pow(x, 3)/6 + calc.pow(x, 5)/120),
  ($ x - x^3"/"3! - x^5"/"5! - x^7"/"7! $, x => x - calc.pow(x, 3)/6 + calc.pow(x, 5)/120 - calc.pow(x, 7)/5040),
)
#canvas({
  import draw: *

  // Set-up a thin axis style
  set-style(axes: (stroke: .5pt, tick: (stroke: .5pt)),
            legend: (stroke: none, orientation: ttb, item: (spacing: .3), scale: 80%))

  plot.plot(size: (12, 8),
    x-tick-step: calc.pi/2,
    x-format: plot.formats.multiple-of,
    y-tick-step: 2, y-min: -2.5, y-max: 2.5,
    legend: "inner-north",
    {
      let domain = (-1.1 * calc.pi, +1.1 * calc.pi)

      for ((title, f)) in fn {
        plot.add-fill-between(f, f1, domain: domain,
          style: (stroke: none), label: title)
      }
      plot.add(f1, domain: domain, label: $ sin x  $,
        style: (stroke: black))
    })
})

#let data = (
  ([Cash],     768),
  ([Funds],    1312),
  ([Stocks],   3812),
  ([Bonds],    7167),
)
#let total = data.map(i => i.last()).sum()

#canvas({
  let colors = gradient.linear(red, yellow)

  chart.pyramid(
    data,
    value-key: 1,
    label-key: 0,
    mode: "AREA-HEIGHT",
    stroke: none,
    level-style: colors,
    inner-label: (
      content: (value, label) => align(center, stack(
        label + "\n",
        str(calc.round(value / total * 10000) / 100) + "%",
        spacing: 2pt,
        dir: ttb
      ))
    ),
    side-label: (
      content: (value, label) => "$" + str(value)
    ),
    gap: 10%
  )
})


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

== 测试thmbox
#theorem[
    This is created using #raw("#theorem[...]", lang: "typ").
]

#proposition[
    This is created using #raw("#proposition[...]", lang: "typ").
]

#lemma[
    This is created using #raw("#lemma[...]", lang: "typ").
]

#corollary[
    This is created using #raw("#corollary[...]", lang: "typ").
]

#definition[
    This is created using #raw("#definition[...]", lang: "typ").
]

#example[
    This is created using #raw("#example[...]", lang: "typ").
]

#remark[
    This is created using #raw("#remark[...]", lang: "typ").
]

#exercise[
    This is created using #raw("#exercise[...]", lang: "typ").
]

#algorithm[
    This is created using #raw("#algorithm[...]", lang: "typ").
]

#claim[
    This is created using #raw("#claim[...]", lang: "typ").
]

#axiom[
    This is created using #raw("#axiom[...]", lang: "typ").
]

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
  frame: (
    border-color: red.darken(50%),
    title-color: red.lighten(60%),
    body-color: red.lighten(90%)
  ),
  title-style: (
    color: black,
    weight: "regular",
    align: center
  ),
  shadow: (
    offset: 3pt,
  ),
  title: "Red-ish showybox with separated sections!",
  lorem(20),
  lorem(12)
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
    emph("This will be useful every time you want to interchange partial derivatives in the future."),
  ),
)[
  Let $f: A arrow RR$ with $A subset RR^n$ an open set such that its cross derivatives of any order exist and are
  continuous in $A$. Then for any point $(a_1, a_2, ..., a_n) in A$ it is true that
  $
    frac(partial^n f, partial x_i ... partial x_j)(a_1, a_2, ..., a_n) =
    frac(partial^n f, partial x_j ... partial x_i)(a_1, a_2, ..., a_n)
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
    In the case of $n=3$, $V$ represents a volumne in three-dimensional space, and $partial V = S$ its surface
  ],
)[
  Suppose $V$ is a subset of $RR^n$ which is compact and has a piecewise smooth boundary $S$ (also indicated with $partial V = S$).
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

⑥
#grid(
  columns: (1fr, 1fr),
  gutter: 1.5em,
  row-gutter: 1.5em,
  [
    #showybox(
      title: [lorem(10)],
      frame: (
        title-color: blue.darken(10%),
        border-color: blue.darken(50%),
      ),
      lorem(50)
    )
  ],
  [
    #showybox(
      title: [lorem(10)],
      frame: (
        title-color: green.darken(10%),
        border-color: green.darken(50%),
      ),
      lorem(50)
    )
  ],
  [
    #showybox(
      title: [lorem(10)],
      frame: (
        title-color: orange.darken(10%),
        border-color: orange.darken(50%),
      ),
      lorem(50)
    )
  ],
  [
    #showybox(
      title: [lorem(10)],
      frame: (
        title-color: purple.darken(10%),
        border-color: purple.darken(50%),
      ),
      lorem(50)
    )
  ],
)

== 测试tdtr
#tidy-tree-graph(
  draw-edge: tidy-tree-draws.horizontal-vertical-draw-edge,
)[
  - Hello
    - World
      - How
        - Whats
          - Day
        - the
          - Nest
        - Time
            - World
              - Whats
                - Day
              - the
              - Time
                - Hello
              - Today
              - Something
                - Interesting
      - This
      - Day
        - Hello
      - People
    - Things
    - Become
    - Somehow
    - are
      - People
      - Hello
        - World
        - Day
          - Hello
          - World
          - Fine
          - I'm
          - Very
            - Happy
            - That
            - They
            - have
            - what
        - you
        - Byte
        - integer
        - Today
      - you
      - Among
]

== 测试codly
```rust
pub fn main() {
    println!("Hello, world!");
}
```
#mycode

== 测试lilaq
#let stacked-area(x, ..y) = {
  y
    .pos()
    .fold(
      ((0,) * x.len(),) , (ys-stacked, ys) => {
        let previous = ys-stacked.last()
        ys-stacked.push(lq.vec.add(previous, ys))
        ys-stacked
      }
    )
    .windows(2)
    .map(((y1, y2)) => lq.fill-between(x, y1, y2: y2))
}

#let x = range(10)
#let y1= (0, 1, 3, 9, 5, 4, 2, 2, 1, 0)
#let y2 = (5, 3, 2, 0, 1, 2, 2, 2, 3, 2)
#let y3 = (0, 0, 0, 0, 1, 2, 4, 5, 5, 9)

#lq.diagram(
  ..stacked-area(x, y1, y2, y3)
)

== 测试lovelace
#figure(
  kind: "algorithm",
  supplement: [Algorithm],

  pseudocode-list(booktabs: true, numbered-title: [My cool algorithm])[
    + do something
    + do something else
    + *while* still something to do
      + do even more
      + *if* not done yet *then*
        + wait a bit
        + resume working
      + *else*
        + go home
      + *end*
    + *end*
  ]
) <cool>
See @cool for details on how to do something cool.

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

== 测试echarm
#echarm.render(width: 100%, height: 30%, options: (
  legend: (
    top: "5%",
    left: "center"
  ),
  series: (
    name: "Access Form",
    type: "pie",
    radius: ("40%", "70%"),
    avoidLabelOverlap: false,
    itemStyle: (
      borderRadius: 10,
      borderColor: "#fff",
      borderWidth: 2,
    ),
    label: (
      "show": false,
    ),
    labelLine: (
      "show": false,
    ),
    data: (
      (value: 1048, name: "Search Engine"),
      (value: 735, name: "Direct"),
      (value: 580, name: "Email"),
      (value: 484, name: "Union Ads"),
      (value: 300, name: "Video Ads"),
    )
  ),
))

== 测试suiji
#{
  let rng = gen-rng-f(42)
  let a = ()
  for i in range(5) {
    (rng, a) = shuffle-f(rng, range(10))
    [#(a.map(it => str(it)).join("  ")) \ ]
  }
}



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
  integral_V dd(V) (pdv(cal(L), phi) - partial_mu (pdv(cal(L), (partial_mu phi)))) = 0 \
  dd(s,2) = -(1-(2G M) / r) dd(t,2) + (1-(2G M) / r)^(-1) dd(r,2) + r^2 dd(Omega,2)
$

$
  "clk:" & signals("|1....|0....|1....|0....|1....|0....|1....|0..", step: #0.5em) \
  "bus:" & signals(" #.... X=... ..... ..... X=... ..... ..... X#.", step: #0.5em)
$

== 测试mitex
#mi(`x`)
#mitex(`
  \newcommand{\f}[2]{#1f(#2)}
  \f\relax{x} = \int_{-\infty}^\infty
    \f\hat\xi\,e^{2 π i ξ x}
    \,d\xi
`)

== 测试zero

#ztable(
  columns: 4,
  align: center,
  format: (auto,) * 4,
  $n$, $α$, $β$, $γ$,
  table.hline(),
  $Alpha$, "1.2+-2", "2e3", "1+-2e4",
  $Beta$, "12+-23", "66e98", "-17+-2e-4",
  $Gamma$, "0+-.2", "1e7", "-.23(2)e-4",
)

== 测试pavemat
#pavemat(
  pave: (
    "SDS(dash: 'solid')DDD]WW",
    (path: "sdDDD", stroke: aqua.darken(30%))
  ),
  stroke: (dash: "dashed", thickness: 1pt, paint: yellow),
  fills: (
    "0-0": green.transparentize(80%),
    "1-1": blue.transparentize(80%),
    "[0-0]": green.transparentize(60%),
    "[1-1]": blue.transparentize(60%),
  ),
  delim: "[",
)[$mat(P, a, v, e; "", m, a, t)$]

#let a = $ mat(1, 2, 3; 4, 5, 6; 7, 8, 9; 10, 11, 12) $
#pavemat(
  a,
  pave: "dSDSDSLLAAWASSDD",
  fills: (
    "1-1": red.transparentize(80%),
    "1-2": blue.transparentize(80%),
    "3-0": green.transparentize(80%),
  ),
)

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

测试参考文献：\
文献1的内容@impagliazzo2001problems \
文献2的内容@Burckhardt:2013
#bibliography("works.bib", title: [参考文献])


#hide()[
😀😃😄😁😆😅🤣😂🙂🙃😉😊😇🥰😍🤩😘😚😙😋😛😜🤪😝🤑🤗🤭🤫🤔🤐🤨😐😑😶😏😒🙄😬🤥😌😔😪🤤😴😷🤒🤕🤢🤮🤧🥵🥶🥴😵🤯🤠🥳😎🤓🧐😕😟🙁☹️😮😯😲😳🥺😦😧😨😰😥😢😭😱😖😣😞😓😩😫🥱😤😡😠🤬
👶🧒👦👧🧑👱👨🧔👨‍🦰👨‍🦱👨‍🦳👨‍🦲👩👩‍🦰🧑👩‍🦱🧑👩‍🦳🧑👩‍🦲🧑👱‍♀️👱‍♂️🧓👴👵🙍🙍‍♂️🙍‍♀️🙎🙎‍♂️🙎‍♀️🙅🙅‍♂️🙅‍♀️🙆🙆‍♂️🙆‍♀️💁💁‍♂️💁‍♀️🙋🙋‍♂️🙋‍♀️🧏🧏‍♂️🧏‍♀️🙇🙇‍♂️🙇‍♀️🤦‍♂️🤦‍♀️🤷‍♀️👨‍⚕️👩‍⚕️👨‍🎓👩‍🎓🧑‍🏫👋🤚🖐️✋🖖👌🤏✌️🤞🤟🤘🤙👈👉👆🖕👇☝️👍👎✊👊🤛🤜👏🙌👐🤲🤝🙏✍️💅🤳💪💌💎🔪💈🚪🚽🚿🛁⌛⏳⌚⏰🎈🎉🎊🎎🎏🎐🎀🎁📯📻📱📲☎📞📟📠🔋🔌💻💽💾💿📀🎥📺📷📹📼🔍🔎🔬🔭📡💡🔦🏮📔📕📖📗📘📙📚📓📃📜📄📰📑🔖💰💴💵💶💷💸💳✉📧📨📩📤📥📦📫📪📬📭📮📝📁📂📅📆📇📈📉📊📋📌📍📎📏📐✂🔒🔓🔏🔐🔑🔨🔫🔧🔩🔗💉💊🚬🔮🚩🎌💦💨🎟️🎫🎖️🏆🏅🥇🥈🥉⚽⚾🥎🏀🏐🏈🏉🎾🥏🎳🏏🏑🏒🥍🏓🏸🥊🥋🥅⛳⛸️🎣🎽🎿🛷🥌🎯🎱🎮🎰🎲🧩♟️🎭🎨🧵🧶🎼🎤🎧🎷🎸🎹🎺🎻🥁🎬🏹]
