// unit4_cover.typ — Payhip Product Thumbnail (4:3 Ratio, 1600x1200 equivalent)
#let brand-navy = rgb("#1B365D")
#let brand-gold = rgb("#C59B27")
#let box-bg = rgb("#F4F6F9")

#set page(
  width: 800pt,
  height: 600pt,
  margin: 0pt,
  fill: rgb("#E9EEF5"),
)

#set text(font: "New Computer Modern", fill: rgb("#1A1A1A"))

// Decorative Geometric Background Accents
#place(
  top + right,
  dx: 80pt,
  dy: -80pt,
  circle(radius: 220pt, fill: brand-navy.transparentize(92%))
)
#place(
  bottom + left,
  dx: -60pt,
  dy: 60pt,
  circle(radius: 180pt, fill: brand-gold.transparentize(88%))
)

#grid(
  columns: (1.15fr, 0.85fr),
  gutter: 24pt,
  inset: 44pt,

  // LEFT COLUMN: Sales Hook & Value Bullets
  align(horizon)[
    // Top Brand Pill
    #box(
      fill: brand-navy,
      radius: 4pt,
      inset: (x: 10pt, y: 5pt),
      text(fill: brand-gold, weight: "bold", size: 11pt, tracking: 0.8pt)[
        AP PHYSICS C: MECHANICS • PDF GUIDE
      ]
    )
    #v(14pt)

    // Main Headline
    #text(fill: brand-navy, weight: "bold", size: 34pt)[
      Unit 4: Systems of Particles & Linear Momentum
    ]
    #v(12pt)

    // Subheadline
    #text(fill: luma(60), size: 15pt)[
      Calculus-based derivations, exam traps, and step-by-step FRQs on 3 high-yield pages.
    ]
    #v(20pt)

    // 3 Key Takeaways
    #set text(size: 13.5pt, fill: rgb("#1A1A1A"))
    #stack(
      spacing: 10pt,
      [#text(fill: brand-gold, weight: "bold")[▸] *Center of Mass* ($integral x dif m$ & non-uniform densities)],
      [#text(fill: brand-gold, weight: "bold")[▸] *Impulse-Momentum* ($sum vec(F)_("ext") = (d vec(p)) / (d t)$ & $F$-$t$ integrals)],
      [#text(fill: brand-gold, weight: "bold")[▸] *Worked FRQs* (Non-uniform rod & ballistic pendulum)],
    )
    #v(26pt)

    // Footer Brand Signature
    #line(length: 85%, stroke: 1pt + brand-gold)
    #v(6pt)
    #text(fill: brand-navy, weight: "bold", size: 12pt)[ScienceBehindThings.com]
    #text(fill: luma(90), size: 11pt)[  |  Promise Media and Education]
  ],

  // RIGHT COLUMN: Stylized Document Mockup Card
  align(horizon + center)[
    #box(
      width: 280pt,
      height: 365pt,
      fill: white,
      radius: 6pt,
      stroke: 1.5pt + luma(190),
      inset: 16pt,
      [
        // Mini Navy Banner
        #block(
          width: 100%,
          fill: brand-navy,
          inset: 10pt,
          radius: 3pt,
          [
            #text(fill: brand-gold, weight: "bold", size: 6.5pt)[AP PHYSICS C: MECHANICS] \
            #text(fill: white, weight: "bold", size: 11pt)[Unit 4: Impulse & Momentum]
          ]
        )
        #v(8pt)

        // Mini Gold Overview Box
        #block(
          width: 100%,
          fill: rgb("#F8F9FA"),
          stroke: (top: 1.5pt + brand-gold),
          inset: 7pt,
          text(size: 7pt, fill: luma(50))[
            *Unit Overview:* Multi-body systems, non-uniform mass integrals, and 1D/2D collision laws.
          ]
        )
        #v(8pt)

        // Mini Key Law Box
        #block(
          width: 100%,
          fill: box-bg,
          stroke: (left: 2pt + brand-navy),
          inset: 8pt,
          [
            #text(fill: brand-navy, weight: "bold", size: 7.5pt)[Impulse-Momentum Theorem]
            #align(center, text(size: 8.5pt)[
              $ vec(J) = integral_(t_1)^(t_2) sum vec(F)_("ext") dif t = Delta vec(p) $
            ])
          ]
        )
        #v(8pt)

        // Mini Exam Trap Box
        #block(
          width: 100%,
          fill: rgb("#FFF8E7"),
          stroke: (left: 2pt + brand-gold),
          inset: 7pt,
          text(size: 6.8pt)[
            #text(fill: rgb("#8A6800"), weight: "bold")[AP Exam Trap:] Impulse and momentum are vectors—track positive and negative signs!
          ]
        )
        #v(8pt)

        // Mini FRQ Box
        #block(
          width: 100%,
          stroke: 0.75pt + luma(200),
          radius: 3pt,
          clip: true,
          [
            #block(width: 100%, fill: brand-navy, inset: 4pt, text(fill: white, weight: "bold", size: 6.5pt)[AP FRQ • BALLISTIC PENDULUM])
            #block(width: 100%, inset: 6pt, text(size: 6.8pt)[
              $ m v_0 = (m + M) v_f arrow.r.double h = v_f^2 / (2 g) $
            ])
          ]
        )
      ]
    )

    // Floating Badge at Bottom of Mockup
    #place(
      bottom + center,
      dy: -38pt,
      box(
        fill: brand-gold,
        radius: 20pt,
        inset: (x: 16pt, y: 7pt),
        stroke: 1.5pt + white,
        text(fill: brand-navy, weight: "bold", size: 11pt)[INSTANT DIGITAL DOWNLOAD]
      )
    )
  ]
)
