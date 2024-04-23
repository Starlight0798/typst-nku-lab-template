#import "template.typ": *
#import "@preview/treet:0.1.1": *
#import "@preview/cheq:0.1.0": checklist
#import "@preview/tablex:0.0.8": tablex, rowspanx, colspanx
#import "@preview/cetz:0.2.2"
#import "@preview/pinit:0.1.4": *
#import "@preview/colorful-boxes:1.3.1": *
#import "@preview/showybox:2.0.1": *
#import "@preview/conchord:0.2.0": *
#import "@preview/fletcher:0.4.3" as fletcher: node, edge
#import "@preview/gentle-clues:0.7.1": *
#import "@preview/badgery:0.1.1": ui-action, menu, badge-gray, badge-red, badge-yellow, badge-green, badge-blue, badge-purple
#import "@preview/chic-hdr:0.4.0": *
#import "@preview/chromo:0.1.0": square-printer-test, gradient-printer-test, circular-printer-test, crosshair-printer-test
#import "@preview/riesketcher:0.2.0": riesketcher
#import "@preview/syntree:0.2.0": syntree
#import "@preview/physica:0.9.3": *
#import "@preview/mitex:0.2.3": *
#import "@preview/easytable:0.1.0": easytable, elem
#import elem: *
#import "@preview/algo:0.3.3": algo, i, d, comment, code
#import "@preview/ctheorems:1.1.2": *
#import "@preview/diagraph:0.2.1": *
#import "@preview/xarrow:0.3.0": xarrow, xarrowSquiggly, xarrowTwoHead
#import "@preview/drafting:0.2.0": *

#show: project.with(
  course: "计算机网络",
  lab_name: "TCP/IP实验",
  stu_name: "丁真",
  stu_num: "114514",
  major: "土木工程",
  department: "火星土木学院",
  date: (2077, 1, 1),
  show_content_figure: true,
)