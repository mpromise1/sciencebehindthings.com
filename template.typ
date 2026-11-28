// template.typ — Promise Media and Education Master Template
#let brand-navy = rgb("#1B365D")
#let brand-gold = rgb("#C59B27")
#let box-bg = rgb("#F4F6F9")

// Custom Math Shortcuts (Zero typing friction)
#let dv(num, den) = $(d #num) / (d #den)$
#let pdv(num, den) = $(diff #num) / (diff #den)$
#let vecb(x) = $bold(arrow(#x))$
#let unit(u) = $space upright(#u)$

#let ap-guide(unit-num: "", unit-title: "", body) = {
  set page(
    paper: "us-letter",
    margin: (top: 0.85in, bottom: 0.85in, x: 0.75in),
    header: context {
      if counter(page).get().first() > 1 [
        #set text(size: 8.5pt, fill: luma(100))
        *AP Physics C: Mechanics* — Unit #unit-num: #unit-title
        #h(1fr)
        ScienceBehindThings.com
        #line(length: 100%, stroke: 0.5pt + luma(200))
      ]
    },
    footer: context {
      set text(size: 8.5pt, fill: luma(100))
      line(length: 100%, stroke: 0.5pt + luma(200))
      v(2pt)
      [© Promise Media and Education, LLC]
      #h(1fr)
      [Page #counter(page).display() of #counter(page).final().first()]
    }
  )

  set text(font: "New Computer Modern", size: 10.5pt, fill: rgb("#1A1A1A"))
  set par(justify: true, leading: 0.65em)

  // Title Banner
  block(
    width: 100%,
    fill: brand-navy,
    inset: 14pt,
    radius: 4pt,
    [
      #text(fill: brand-gold, weight: "bold", size: 9pt)[AP PHYSICS C: MECHANICS • CALCULUS-BASED STUDY GUIDE] \
      #v(2pt)
      #text(fill: white, weight: "bold", size: 18pt)[Unit #unit-num: #unit-title]
    ]
  )
  v(10pt)
  body
}

// Reusable Callout Boxes
#let key-law(title, content) = {
  block(
    width: 100%,
    fill: box-bg,
    stroke: (left: 3pt + brand-navy),
    inset: 10pt,
    radius: (right: 4pt),
    [
      #text(fill: brand-navy, weight: "bold")[#title] \
      #v(3pt)
      #content
    ]
  )
}

#let exam-trap(content) = {
  block(
    width: 100%,
    fill: rgb("#FFF8E7"),
    stroke: (left: 3pt + brand-gold),
    inset: 10pt,
    radius: (right: 4pt),
    [
      #text(fill: rgb("#8A6800"), weight: "bold")[AP Exam Trap:] #content
    ]
  )
}
