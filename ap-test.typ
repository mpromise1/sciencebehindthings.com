// ==========================================
// 1. GLOBAL BRANDING & PAGE SETUP
// ==========================================
#let primary-navy = rgb("#0F172A")   // Deep authoritative slate/navy
#let accent-gold  = rgb("#D97706")   // High-contrast gold for highlights
#let callout-bg   = rgb("#F8FAFC")   // Soft gray-blue background for boxes
#let trap-red     = rgb("#DC2626")   // Warning color for common AP exam traps

#set page(
  paper: "us-letter",
  margin: (top: 0.85in, bottom: 0.85in, x: 0.8in),
  header: context {
    if counter(page).get().first() > 1 [
      #set text(size: 8.5pt, fill: luma(120), font: "Inter")
      *AP PHYSICS C: MECHANICS — THE MASTERY VAULT*
      #h(1fr)
      Promise Media & Education
      #line(length: 100%, stroke: 0.5pt + luma(200))
    ]
  },
  footer: context {
    set text(size: 8.5pt, fill: luma(120), font: "Inter")
    line(length: 100%, stroke: 0.5pt + luma(200))
    v(2pt)
    [© Promise Media & Education, LLC]
    #h(1fr)
    [Page #counter(page).display("1 of 1", both: true)]
  }
)

#set text(font: "New Computer Modern", size: 10.5pt, fill: rgb("#1E293B"))
#set par(justify: true, leading: 0.65em)

// Style all headings automatically
#show heading.where(level: 1): it => {
  pagebreak(weak: true) // Forces every major section onto a fresh page
  block(
    width: 100%,
    fill: primary-navy,
    inset: 12pt,
    radius: 4pt,
    text(fill: white, font: "Inter", weight: "bold", size: 15pt, it.body)
  )
  v(0.5em)
}

#show heading.where(level: 2): it => {
  v(0.8em)
  text(fill: primary-navy, font: "Inter", weight: "bold", size: 12.5pt, it.body)
  v(-0.4em)
  line(length: 100%, stroke: 1pt + accent-gold)
  v(0.4em)
}

// ==========================================
// 2. CUSTOM CALLOUT & EQUATION COMPONENTS
// ==========================================

// Core Concept / Strategy Box
#let vault-box(title: "KEY STRATEGY", body) = {
  block(
    width: 100%,
    fill: callout-bg,
    stroke: (left: 4pt + primary-navy, rest: 0.5pt + luma(210)),
    inset: 12pt,
    radius: (right: 4pt),
    [
      #text(font: "Inter", weight: "bold", fill: primary-navy, size: 9.5pt)[#title] \
      #v(3pt)
      #body
    ]
  )
}

// AP Exam Trap Warning Box
#let exam-trap(body) = {
  block(
    width: 100%,
    fill: rgb("#FEF2F2"),
    stroke: (left: 4pt + trap-red, rest: 0.5pt + rgb("#FECACA")),
    inset: 12pt,
    radius: (right: 4pt),
    [
      #text(font: "Inter", weight: "bold", fill: trap-red, size: 9.5pt)[⚠ AP EXAM TRAP] \
      #v(3pt)
      #body
    ]
  )
}

// Highlighted Master Equation Block
#let master-eq(label: "", eq) = {
  align(center)[
    #block(
      fill: white,
      stroke: 1pt + accent-gold,
      inset: (x: 18pt, y: 10pt),
      radius: 4pt,
      [
        #if label != "" [
          #text(font: "Inter", size: 8pt, weight: "bold", fill: accent-gold)[#upper(label)] \
        ]
        #eq
      ]
    )
  ]
}

// ==========================================
// 3. SAMPLE WORKBOOK CONTENT
// ==========================================

= Unit 1: Calculus-Based Kinematics

== 1.1 Variable Acceleration & Differential Equations
When acceleration is not constant, the standard algebraic kinematic equations fail. You must return to the fundamental differential definitions of motion.

#master-eq(label: "Fundamental Kinematic Definitions")[
  $ a(t) = (d v)/(d t) = (d^2 x)/(d t^2) quad arrow.r.double quad Delta v = integral_(t_1)^(t_2) a(t) \, d t $
]

#vault-box(title: "THE VAULT METHOD: SEPARATION OF VARIABLES")[
  Whenever acceleration is given as a function of velocity, $a(v)$, **do not integrate with respect to time**. Rewrite acceleration as $(d v)/(d t)$ and separate the variables before integrating:
  $ (d v)/(d t) = -k v quad arrow.r.double quad integral_(v_0)^v (d v')/v' = -k integral_0^t d t' $
]

== 1.2 Worked Example: Resistive Drag Force
A probe of mass $m = 2.50 "kg"$ moves horizontally through a resistive fluid where the drag force is proportional to its speed, $F_d = -b v$ (with $b = 0.50 "N" dot "s/m"$). At $t = 0$, the initial speed is $v_0 = 12.0 "m/s"$ (approx. $39.4 "ft/s"$).

1. **Set up Newton's Second Law:**
   $ sum F_x = m a_x quad arrow.r.double quad -b v = m (d v)/(d t) $

2. **Separate variables and integrate:**
   $ integral_(v_0)^v (d v')/v' = -b/m integral_0^t d t' quad arrow.r.double quad ln(v/v_0) = -(b t)/m $

3. **Solve explicitly for velocity $v(t)$:**
   $ v(t) = v_0 e^(-(b t)/m) = 12.0 e^(-0.20 t) "m/s" $

#exam-trap[
  Students frequently lose points on the AP Exam by forgetting the lower limit of integration $v_0$. Evaluating $integral (d v)/v$ as $ln(v)$ without subtracting $ln(v_0)$ yields an unphysical result at $t = 0$.
]

// To insert a Python-generated SVG or PNG diagram later, simply uncomment:
// #figure(
//   image("assets/velocity_decay_curve.svg", width: 75%),
//   caption: [Exponential velocity decay $v(t)$ for linear drag.]
// )