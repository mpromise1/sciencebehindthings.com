// ============================================================================
// UNIFIED 4:3 PAYHIP COVER GENERATOR (3 COVERS IN ONE EXPORT)
// ============================================================================

#let navy = rgb("#0f2537")
#let navy-dark = rgb("#091724")
#let accent = rgb("#d97706") // Amber/Gold
#let emerald = rgb("#10b981")
#let sky = rgb("#38bdf8")
#let slate-light = rgb("#cbd5e1")

// Set exact 4:3 Payhip aspect ratio (8in x 6in = 1200x900px at 150 DPI / 2400x1800px at 300 DPI)
#set page(
  width: 8in,
  height: 6in,
  margin: 0pt,
  fill: navy,
)

#set text(font: "Helvetica Neue", fill: white)
#set par(leading: 0.55em)

// Reusable Cover Template Function
#let make-cover(badge-text, title-text, subtitle-text, page-tag, diagram) = {
  box(
    width: 100%,
    height: 100%,
    inset: 36pt,
    [
      // Top Row: Unit Badge + Page Count Pill
      #grid(
        columns: (1fr, auto),
        align: (left + horizon, right + horizon),
        box(
          fill: accent,
          inset: (x: 12pt, y: 6pt),
          radius: 4pt,
          text(weight: "bold", size: 11pt, tracking: 0.5pt)[#badge-text]
        ),
        box(
          stroke: 1pt + slate-light,
          inset: (x: 10pt, y: 5pt),
          radius: 4pt,
          text(fill: slate-light, weight: "bold", size: 10pt)[#page-tag]
        )
      )

      #v(18pt)

      // Main Bold Headline
      #text(weight: "bold", size: 30pt)[#title-text]

      #v(8pt)

      // Sub-headline
      #text(fill: slate-light, size: 13.5pt)[#subtitle-text]

      #v(16pt)

      // Center Vector Graphic Card
      #align(center)[
        #box(
          width: 100%,
          height: 165pt,
          fill: navy-dark,
          stroke: 1pt + rgb("#1e3a5f"),
          radius: 8pt,
          inset: 12pt,
          diagram
        )
      ]

      #v(1fr)

      // Bottom Footer Bar
      #line(length: 100%, stroke: 0.75pt + rgb("#1e3a5f"))
      #v(6pt)
      #grid(
        columns: (1fr, auto),
        align: (left + horizon, right + horizon),
        text(weight: "bold", size: 12pt, fill: white)[SCIENCE BEHIND THINGS],
        text(size: 10.5pt, fill: accent, weight: "bold")[AP PHYSICS C: MECHANICS • EXAM PREP]
      )
    ]
  )
}

// ============================================================================
// COVER 1: UNIT 2 — DRAG FORCE & DIFFERENTIAL EQUATIONS
// ============================================================================
#make-cover(
  "UNIT 2 • NEWTON'S LAWS & DRAG",
  "Drag Force & Differential Equations",
  "Step-by-Step Calculus Integrations, Linear vs. Quadratic Drag & Terminal Velocity Shortcuts",
  "2-PAGE RAPID GUIDE",
  [
    // Axes
    #place(dx: 40pt, dy: 15pt, line(start: (0pt, 0pt), end: (0pt, 115pt), stroke: 1.5pt + slate-light))
    #place(dx: 40pt, dy: 130pt, line(start: (0pt, 0pt), end: (230pt, 0pt), stroke: 1.5pt + slate-light))
    #place(dx: 18pt, dy: 12pt, text(size: 10pt, weight: "bold", fill: slate-light)[$v(t)$])
    #place(dx: 275pt, dy: 125pt, text(size: 10pt, weight: "bold", fill: slate-light)[$t$])

    // Terminal Velocity Asymptote
    #place(dx: 40pt, dy: 35pt, line(start: (0pt, 0pt), end: (225pt, 0pt), stroke: (paint: accent, thickness: 1.5pt, dash: "dashed")))
    #place(dx: 185pt, dy: 18pt, text(size: 10pt, weight: "bold", fill: accent)[$v_t = (m g) / b$])

    // Asymptotic Velocity Curve
    #place(dx: 40pt, dy: 35pt,
      curve(
        stroke: 2.5pt + sky,
        curve.move((0pt, 95pt)),
        curve.cubic((35pt, 25pt), (95pt, 5pt), (220pt, 2pt))
      )
    )

    // Right Side Key Equations
    #place(dx: 315pt, dy: 25pt,
      stack(
        spacing: 12pt,
        text(size: 13pt, weight: "bold", fill: white)[$m (dif v) / (dif t) = m g - b v$],
        text(size: 13pt, weight: "bold", fill: sky)[$v(t) = v_t (1 - e^(-(b/m)t))$],
        text(size: 11pt, fill: emerald, weight: "bold")[✓ Zero Skipped Algebra Steps]
      )
    )
  ]
)

#pagebreak()

// ============================================================================
// COVER 2: UNIT 3 — POTENTIAL ENERGY CURVES U(x)
// ============================================================================
#make-cover(
  "UNIT 3 • WORK, ENERGY & POWER",
  "Potential Energy Curves U(x) & Equilibrium",
  "Conservative Force Calculus, Turning Points, Second-Derivative Stability & Worked FRQs",
  "4-PAGE EXAM BLUEPRINT",
  [
    // Axes
    #place(dx: 40pt, dy: 15pt, line(start: (0pt, 0pt), end: (0pt, 115pt), stroke: 1.5pt + slate-light))
    #place(dx: 40pt, dy: 110pt, line(start: (0pt, 0pt), end: (230pt, 0pt), stroke: 1.5pt + slate-light))
    #place(dx: 14pt, dy: 12pt, text(size: 10pt, weight: "bold", fill: slate-light)[$U(x)$])
    #place(dx: 275pt, dy: 105pt, text(size: 10pt, weight: "bold", fill: slate-light)[$x$])

    // E_mech Dashed Line
    #place(dx: 40pt, dy: 45pt, line(start: (0pt, 0pt), end: (225pt, 0pt), stroke: (paint: accent, thickness: 1.5pt, dash: "dashed")))
    #place(dx: 215pt, dy: 30pt, text(size: 9.5pt, weight: "bold", fill: accent)[$E_"mech"$])

    // Potential Well Curve
    #place(dx: 40pt, dy: 15pt,
      curve(
        stroke: 2.5pt + sky,
        curve.move((12pt, 10pt)),
        curve.cubic((35pt, 105pt), (65pt, 105pt), (90pt, 75pt)),
        curve.cubic((115pt, 45pt), (130pt, 45pt), (155pt, 85pt)),
        curve.cubic((175pt, 115pt), (195pt, 65pt), (215pt, 12pt))
      )
    )

    // Right Side Key Equations
    #place(dx: 315pt, dy: 25pt,
      stack(
        spacing: 12pt,
        text(size: 13pt, weight: "bold", fill: white)[$F_x(x) = - (dif U) / (dif x)$],
        text(size: 13pt, weight: "bold", fill: sky)[$K(x) = E_"mech" - U(x)$],
        text(size: 11pt, fill: emerald, weight: "bold")[✓ Stable vs. Unstable Rules]
      )
    )
  ]
)

#pagebreak()

// ============================================================================
// COVER 3: UNIT 1 — KINEMATICS MASTERY VAULT
// ============================================================================
#make-cover(
  "UNIT 1 • COMPLETE MASTERY VAULT",
  "AP Physics C: Kinematics Mastery Vault",
  "Non-Constant Acceleration Calculus, Integration Traps, FRQ Rubrics & Exam Frameworks",
  "21-PAGE COMPLETE VAULT",
  [
    // Axes
    #place(dx: 40pt, dy: 15pt, line(start: (0pt, 0pt), end: (0pt, 115pt), stroke: 1.5pt + slate-light))
    #place(dx: 40pt, dy: 115pt, line(start: (0pt, 0pt), end: (230pt, 0pt), stroke: 1.5pt + slate-light))
    #place(dx: 14pt, dy: 12pt, text(size: 10pt, weight: "bold", fill: slate-light)[$a(t)$])
    #place(dx: 275pt, dy: 110pt, text(size: 10pt, weight: "bold", fill: slate-light)[$t$])

    // Non-linear curve
    #place(dx: 40pt, dy: 15pt,
      curve(
        stroke: 2.5pt + accent,
        curve.move((5pt, 90pt)),
        curve.cubic((65pt, 85pt), (130pt, 25pt), (215pt, 15pt))
      )
    )

    // Right Side Key Equations
    #place(dx: 315pt, dy: 25pt,
      stack(
        spacing: 12pt,
        text(size: 13pt, weight: "bold", fill: white)[$Delta v = integral_(t_1)^(t_2) a(t) dif t$],
        text(size: 13pt, weight: "bold", fill: accent)[$v dif v = a(x) dif x$],
        text(size: 11pt, fill: emerald, weight: "bold")[✓ Full 21-Page Exam System]
      )
    )
  ]
)
// ============================================================================
// UNIFIED 4:3 PAYHIP BUNDLE COVER GENERATOR (2 COVERS IN ONE EXPORT)
// ============================================================================

#let navy = rgb("#0f2537")
#let navy-dark = rgb("#091724")
#let card-bg = rgb("#132c42")
#let accent = rgb("#d97706") // Amber/Gold
#let emerald = rgb("#10b981")
#let sky = rgb("#38bdf8")
#let slate-light = rgb("#cbd5e1")

// Exact 4:3 Payhip aspect ratio
#set page(
  width: 8in,
  height: 6in,
  margin: 0pt,
  fill: navy,
)

#set text(font: "Helvetica Neue", fill: white)
#set par(leading: 0.55em)

#let make-bundle-cover(badge-text, save-tag, title-text, subtitle-text, visual-stack) = {
  box(
    width: 100%,
    height: 100%,
    inset: 36pt,
    [
      // Top Row: Bundle Badge + Savings Pill
      #grid(
        columns: (1fr, auto),
        align: (left + horizon, right + horizon),
        box(
          fill: accent,
          inset: (x: 12pt, y: 6pt),
          radius: 4pt,
          text(weight: "bold", size: 11pt, tracking: 0.5pt)[#badge-text]
        ),
        box(
          fill: emerald,
          inset: (x: 10pt, y: 5pt),
          radius: 4pt,
          text(fill: navy-dark, weight: "bold", size: 10pt)[#save-tag]
        )
      )

      #v(16pt)

      // Main Bold Headline
      #text(weight: "bold", size: 28pt)[#title-text]

      #v(8pt)

      // Sub-headline
      #text(fill: slate-light, size: 13pt)[#subtitle-text]

      #v(14pt)

      // Center Stacked Bundle Visual Box
      #align(center)[
        #box(
          width: 100%,
          height: 170pt,
          fill: navy-dark,
          stroke: 1pt + rgb("#1e3a5f"),
          radius: 8pt,
          inset: 14pt,
          visual-stack
        )
      ]

      #v(1fr)

      // Bottom Footer Bar
      #line(length: 100%, stroke: 0.75pt + rgb("#1e3a5f"))
      #v(6pt)
      #grid(
        columns: (1fr, auto),
        align: (left + horizon, right + horizon),
        text(weight: "bold", size: 12pt, fill: white)[SCIENCE BEHIND THINGS],
        text(size: 10.5pt, fill: accent, weight: "bold")[AP PHYSICS C: MECHANICS • MULTI-GUIDE PACK]
      )
    ]
  )
}

// Helper for mini PDF document cards inside the bundle graphic
#let mini-pdf(unit-label, doc-title, page-info, border-col) = {
  box(
    width: 145pt,
    height: 135pt,
    fill: card-bg,
    stroke: 1.5pt + border-col,
    radius: 6pt,
    inset: 10pt,
    [
      #box(
        fill: border-col,
        inset: (x: 6pt, y: 3pt),
        radius: 3pt,
        text(fill: navy-dark, weight: "bold", size: 8pt)[#unit-label]
      )
      #v(8pt)
      #text(weight: "bold", size: 11pt, fill: white)[#doc-title]
      #v(1fr)
      #line(length: 100%, stroke: 0.5pt + rgb("#334155"))
      #v(4pt)
      #text(size: 8.5pt, fill: slate-light, weight: "bold")[#page-info]
    ]
  )
}

// ============================================================================
// BUNDLE COVER 1: UNITS 2 & 3 CALCULUS BOTTLENECK PACK ($17)
// ============================================================================
#make-bundle-cover(
  "2-GUIDE BUNDLE • UNITS 2 & 3",
  "SAVE $4 • 6 PAGES TOTAL",
  "Units 2 & 3 Calculus Bottleneck Pack",
  "Drag Force Differential Equations + Potential Energy Curves U(x) Blueprint",
  [
    #align(center + horizon)[
      #grid(
        columns: (auto, auto, auto, auto),
        gutter: 14pt,
        align: horizon,
        mini-pdf("UNIT 2 PDF", "Drag Force & Differential Equations", "2-Page Rapid Guide", sky),
        text(size: 24pt, weight: "bold", fill: accent)[+],
        mini-pdf("UNIT 3 PDF", "Potential Energy Curves U(x)", "4-Page Exam Blueprint", accent),
        box(
          inset: (left: 10pt),
          stack(
            spacing: 8pt,
            text(size: 11.5pt, weight: "bold", fill: emerald)[✓ Linear & Quadratic Drag],
            text(size: 11.5pt, weight: "bold", fill: emerald)[✓ Fx = -dU/dx & Stability],
            text(size: 11.5pt, weight: "bold", fill: emerald)[✓ Worked AP FRQ Rubrics]
          )
        )
      )
    ]
  ]
)

#pagebreak()

// ============================================================================
// BUNDLE COVER 2: UNITS 1–3 COMPLETE EXAM MASTERY BUNDLE ($59)
// ============================================================================
#make-bundle-cover(
  "ALL-IN BUNDLE • UNITS 1, 2 & 3",
  "SAVE $11 • 27 PAGES TOTAL",
  "Units 1–3 Complete Exam Mastery Pack",
  "Full Kinematics Vault + Drag Force Guide + Potential Energy Curves U(x)",
  [
    #align(center + horizon)[
      #grid(
        columns: (auto, auto, auto, auto, auto),
        gutter: 10pt,
        align: horizon,
        mini-pdf("UNIT 1 VAULT", "Kinematics Mastery Vault", "21-Page Complete Guide", accent),
        text(size: 20pt, weight: "bold", fill: accent)[+],
        mini-pdf("UNIT 2 PDF", "Drag Force & Diff. Equations", "2-Page Rapid Guide", sky),
        text(size: 20pt, weight: "bold", fill: accent)[+],
        mini-pdf("UNIT 3 PDF", "Potential Energy Curves U(x)", "4-Page Blueprint", emerald)
      )
    ]
  ]
)
