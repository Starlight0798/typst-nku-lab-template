#import "template.typ": *
#import "@preview/tablex:0.0.8": tablex, rowspanx, colspanx
#import "@preview/cetz:0.2.2"
#import "@preview/pinit:0.1.3": *
#import "@preview/colorful-boxes:1.3.1": *
#import "@preview/showybox:2.0.1": *
#import "@preview/conchord:0.2.0": *
#import "@preview/fletcher:0.4.2" as fletcher: node, edge
#import "@preview/gentle-clues:0.7.1": *
#import "@preview/badgery:0.1.1": ui-action, menu, badge-gray, badge-red, badge-yellow, badge-green, badge-blue, badge-purple
#import "@preview/chic-hdr:0.4.0": *
#import "@preview/chromo:0.1.0": square-printer-test, gradient-printer-test, circular-printer-test, crosshair-printer-test
#import "@preview/riesketcher:0.2.0": riesketcher
#import "@preview/syntree:0.2.0": syntree
#import "@preview/mitex:0.2.2": *
#import "@preview/easytable:0.1.0": easytable, elem
#import elem: *
#import "@preview/algo:0.3.3": algo, i, d, comment, code
#import "@preview/ctheorems:1.1.2": *
#import "@preview/diagraph:0.2.1": *
#import "@preview/xarrow:0.3.0": xarrow, xarrowSquiggly, xarrowTwoHead
#import "@preview/drafting:0.2.0" : *

#show: project.with(
  course: "计算机网络",
  lab_name: "TCP/IP实验",
  stu_name: "丁真",
  stu_num: "114514",
  major: "土木工程",
  department: "火星土木学院",
  date: (2077, 1, 1),
  show_content_figure: false
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
#lorem(20) \
测试中文:\
#indent() _#mytest _

== 二级标题
#lorem(20)
#figure(image("./img/NKU-logo.png", width: 10%), caption: "南开大学校徽")

分点：
+ _#lorem(10) _
+ _#lorem(10) _

- _#lorem(10) _
- _#lorem(10) _

== *测试tablex*
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

== *测试codly*
```rust
pub fn main() {
    println!("Hello, world!");
}
```
#mycode

== *测试cetz*
#let data = (
  ([Belgium], 24),
  ([Germany], 31),
  ([Greece], 18),
  ([Spain], 21),
  ([France], 23),
  ([Hungary], 18),
  ([Netherlands], 27),
  ([Romania], 17),
  ([Finland], 26),
  ([Turkey], 13),
)

#figure(
  caption: "饼图",
  cetz.canvas({
    import cetz.chart
    import cetz.draw: *
    
    let colors = gradient.linear(red, blue, green, yellow)
    
    chart.piechart(
      data,
      value-key: 1,
      label-key: 0,
      radius: 4,
      slice-style: colors,
      inner-radius: 1,
      outset: 3,
      inner-label: (content: (value, label) => [#text(white, str(value))], radius: 110%),
      outer-label: (content: "%", radius: 110%),
    )
  }),
)

== *测试pinit*

#text(size: 16pt)[
  A simple #pin(1)highlighted text#pin(2).
  
]
#pinit-highlight(1, 2)
#pinit-point-from(2)[It is simple.]

#pagebreak()

== *测试colorbox*
#colorbox(title: lorem(5), color: "blue")[
  #lorem(30)
]

#slanted-colorbox(title: lorem(5), color: "red")[
  #lorem(30)
]

#outline-colorbox(title: lorem(5))[
  #lorem(30)
]

#outline-colorbox(title: lorem(5), centering: true, color: "green")[
  #lorem(50)
]

== *测试showybox*
// First showybox
#showybox(
  frame: (border-color: red.darken(50%), title-color: red.lighten(60%), body-color: red.lighten(80%)),
  title-style: (color: black, weight: "regular", align: center),
  shadow: (offset: 3pt),
  title: "Red-ish showybox with separated sections!",
  lorem(20),
  lorem(12),
)

// Second showybox
#showybox(
  title-style: (
    boxed-style: (anchor: (x: center, y: horizon), radius: (top-left: 10pt, bottom-right: 10pt, rest: 0pt)),
  ),
  frame: (
    title-color: blue.lighten(10%),
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

#showybox(
  frame: (border-color: blue.darken(50%), title-color: blue.lighten(80%), body-color: white),
  title-style: (color: black, weight: "regular", align: center),
  shadow: (offset: 5pt),
  title: lorem(3),
  lorem(10),
  [#align(left)[
      #grid(columns: 2, gutter: 5pt, rows: auto, lorem(30), lorem(30))
    ]
  ],
)

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

#showybox(
  title: "Parent container",
  lorem(10),
  columns(2)[
    #showybox(title-style: (boxed-style: (:)), title: "Child 1", lorem(10))
    #colbreak()
    #showybox(title-style: (boxed-style: (:)), title: "Child 2", lorem(10))
  ],
)

#showybox(
  title-style: (
    boxed-style: (anchor: (x: center, y: horizon), radius: (top-left: 10pt, bottom-right: 10pt, rest: 0pt)),
  ),
  frame: (
    title-color: blue.darken(35%),
    body-color: white,
    footer-color: blue.lighten(80%),
    border-color: blue.darken(60%),
    radius: (top-left: 10pt, bottom-right: 10pt, rest: 0pt),
  ),
  title: "mytitle",
  lorem(10),
  grid(columns: 2, align: center)[
    #showybox(title-style: (boxed-style: (:)), title: "Child 1", lorem(10))
    #showybox(title-style: (boxed-style: (:)), title: "Child 2", lorem(10))
    #showybox(title-style: (boxed-style: (:)), title: "Child 2", lorem(10))
    #showybox(title-style: (boxed-style: (:)), title: "Child 2", lorem(10))
    #showybox(title-style: (boxed-style: (:)), title: "Child 2", lorem(10))
    #showybox(title-style: (boxed-style: (:)), title: "Child 2", lorem(10))
  ],
)

#showybox(
  title-style: (
    boxed-style: (anchor: (x: center, y: horizon), radius: (top-left: 10pt, bottom-right: 10pt, rest: 0pt)),
  ),
  frame: (
    title-color: blue.darken(35%),
    body-color: white,
    footer-color: blue.lighten(80%),
    border-color: blue.darken(60%),
    radius: (top-left: 10pt, bottom-right: 10pt, rest: 0pt),
  ),
  title: "mytitle",
  lorem(10),
  columns(2, gutter: 2em)[
    #set text(size: 8.5pt)
    #showybox(title-style: (boxed-style: (:)), title: lorem(3), lorem(10))
    #showybox(title-style: (boxed-style: (:)), title: lorem(3), lorem(10))
    #showybox(title-style: (boxed-style: (:)), title: lorem(3), lorem(10))
    #showybox(title-style: (boxed-style: (:)), title: lorem(3), lorem(10))
    #showybox(title-style: (boxed-style: (:)), title: lorem(3), lorem(10))
  ],
)

#let chord = new-chordgen()

#box(chord("x32010", name: "C"))
#box(chord("x33222", name: "F#m/C#"))
#box(chord("x,9,7,8,9,9"))

// https://xkcd.com/1195/
== *测试fletcher*
#import fletcher.shapes: diamond
#fletcher.diagram(
  node-stroke: 1pt,
  edge-stroke: 1pt,
  node((0, 0), [Start], corner-radius: 2pt, extrude: (0, 3)),
  edge("-|>"),
  node(
    (0, 1),
    align(center)[
      Hey, wait,\ this flowchart\ is a trap!
    ],
    shape: diamond,
  ),
  edge("d,r,u,l", "-|>", [Yes], label-pos: 0.1),
)

#fletcher.diagram(
  node-stroke: .1em,
  node-fill: gradient.radial(blue.lighten(80%), blue, center: (30%, 20%), radius: 80%),
  spacing: 4em,
  edge((-1, 0), "r", "-|>", `open(path)`, label-pos: 0, label-side: center),
  node((0, 0), `reading`, radius: 2em),
  edge(`read()`, "-|>"),
  node((1, 0), `eof`, radius: 2em),
  edge(`close()`, "-|>"),
  node((2, 0), `closed`, radius: 2em, extrude: (-2.5, 0)),
  edge((0, 0), (0, 0), `read()`, "--|>", bend: 130deg),
  edge((0, 0), (2, 0), `close()`, "-|>", bend: -40deg),
)

#import fletcher.shapes: house, hexagon
#let blob(pos, label, tint: white, ..args) = node(
  pos,
  align(center, label),
  width: 25mm,
  fill: tint.lighten(60%),
  stroke: 1pt + tint.darken(20%),
  corner-radius: 5pt,
  ..args,
)

#fletcher.diagram(
  spacing: 8pt,
  cell-size: (8mm, 10mm),
  edge-stroke: 1pt,
  edge-corner-radius: 5pt,
  mark-scale: 70%,
  blob((0, 1), [Add & Norm], tint: yellow, shape: hexagon),
  edge(),
  blob((0, 2), [Multi-Head\ Attention], tint: orange),
  blob((0, 4), [Input], shape: house.with(angle: 30deg), width: auto, tint: red),
  for x in (-.3, -.1, +.1, +.3) {
    edge((0, 2.8), (x, 2.8), (x, 2), "-|>")
  },
  edge((0, 2.8), (0, 4)),
  edge((0, 3), "l,uu,r", "--|>"),
  edge((0, 1), (0, 0.35), "r", (1, 3), "r,u", "-|>"),
  edge((1, 2), "d,rr,uu,l", "--|>"),
  blob((2, 0), [Softmax], tint: green),
  edge("<|-"),
  blob((2, 1), [Add & Norm], tint: yellow, shape: hexagon),
  edge(),
  blob((2, 2), [Feed\ Forward], tint: blue),
)

== *测试gentle*
// info clue 
#info[ This is the info clue ... ]
// or a tip
#tip(title: "Best tip ever")[Check out this cool package]
#question[ This is the info clue ... ]
#quote[ This is the info clue ... ]
#example[ This is the info clue ... ]

== *测试badgery*
#badge-gray("Gray badge")
#badge-red("Red badge")
#badge-yellow("Yellow badge") \
#badge-green("Green badge")
#badge-blue("Blue badge")
#badge-purple("Purple badge")
#ui-action("Click me")
#menu("File", "New File...")
#menu("Menu", "Sub-menu", "Sub-sub menu", "Action")

== *测试chromo*
#box(
  height: 68pt,
  columns(2, gutter: 11pt)[
    #square-printer-test()
    #gradient-printer-test()
    #circular-printer-test()
  ],
)

#pagebreak()
== *测试riesketcher*
#canvas({
  riesketcher(x => calc.pow(x, 3) + 4, method: "left", start: -3.1, end: 3.5, n: 10, plot-x-tick-step: 1)
})

== *测试syntree*
#figure(
  caption: "Example of a syntax tree.",
  syntree(
    nonterminal: (fill: blue),
    terminal: (style: "italic"),
    "[S [NP [Det the] [Nom [Adj little] [N bear]]] [VP [VP [V saw] [NP [Det the] [Nom [Adj fine] [Adj fat] [N trout]]]] [PP [P in] [^NP the brook]]]]",
  ),
)

== *测试mitex*
#mitex(`
  \newcommand{\f}[2]{#1f(#2)}
  \f\relax{x} = \int_{-\infty}^\infty
    \f\hat\xi\,e^{2 π i ξ x}
    \,d\xi
`)

== *测试easytable*
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

#easytable({
  let tr = tr.with(trans: pad.with(x: 3pt))
  
  th[Header 1][Header 2][Header 3]
  tr[How][I][want]
  tr[a][drink,][alcoholic]
  tr[of][course,][after]
  tr[the][heavy][lectures]
  tr[involving][quantum][mechanics.]
})

== *测试algo*
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

#table(
  columns: 2,
  stroke: none,
  align: (x, _) => (right, left).at(x),
  "indent-guides:",
  "1pt + black",
  "main-text-styles:",
  "(size: 15pt)",
)

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

== *测试theorems*
#show: thmrules
#let theorem = thmbox("theorem", "Theorem", fill: rgb("#eeffee"))
#let corollary = thmplain("corollary", "Corollary", base: "theorem", titlefmt: strong)
#let definition = thmbox("definition", "Definition", inset: (x: 1.2em, top: 1em))

#let example = thmplain("example", "Example").with(numbering: none)
#let proof = thmproof("proof", "Proof")
#definition[
  A natural number is called a #highlight[_prime number_] if it is greater than 1 and cannot be written as the product of
  two smaller natural numbers.
]
#example[
  The numbers $2$, $3$, and $17$ are prime. @cor_largest_prime shows that this list is not exhaustive!
]

#theorem("Euclid")[
  There are infinitely many primes.
]
#proof[
  Suppose to the contrary that $p_1, p_2, dots, p_n$ is a finite enumeration of all primes. Set $P = p_1 p_2 dots p_n$.
  Since $P + 1$ is not in our list, it cannot be prime. Thus, some prime factor $p_j$ divides $P + 1$. Since
  $p_j$ also divides $P$, it must divide the difference $(P + 1) - P = 1$, a contradiction.
]

#corollary[
  There is no largest prime number.
] <cor_largest_prime>
#corollary[
  There are infinitely many composite numbers.
]

#theorem[
  There are arbitrarily long stretches of composite numbers.
]
#proof[
  For any $n > 2$, consider $
    n! + 2, quad n! + 3, quad ..., quad n! + n #qedhere
  $
]

== *测试diagraph*
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

== *测试xarrow*
$
a xarrow(sym: <--, QQ\, 1 + 1^4) b \
  c xarrowSquiggly("very long boi") d \
  c / ( a xarrowTwoHead("NP" limits(sum)^*) b times 4)
$

== *测试drafting*

#set-page-properties()
#lorem(20)
#margin-note(side: left)[Hello, world!]
#lorem(10)
#margin-note[When notes are about to overlap, they're automatically shifted]
#margin-note(stroke: aqua + 3pt)[To avoid collision]
#lorem(25)
#margin-note(stroke: green, side: left)[You can provide two positional arguments if you want to highlight a phrase associated with your note.][The first is text which should be inline-noted, and the second is the standard margin note.]

#let caution-rect = rect.with(inset: 1em, radius: 0.5em, fill: orange.lighten(80%))
#inline-note(rect: caution-rect)[
  Be aware that `typst` will complain when 4 notes overlap, and stop automatically avoiding collisions when 5 or more notes
  overlap. This is because the compiler stops attempting to reposition notes after a few attempts
  (initial layout + adjustment for each note).

  You can manually adjust the position of notes with `dy` to silence the warning.
]