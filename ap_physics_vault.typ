// ==========================================
// PAGE 1: COVER & UPDATED TABLE OF CONTENTS
// ==========================================
#let boxed(..args) = box(stroke: 0.75pt, inset: 4pt, baseline: 25%)[$#args.pos().join(", ")$]
#let primary-navy = rgb("#0F172A")
#let accent-gold  = rgb("#D97706")
#let box-gray     = rgb("#F4F6F9")

// Suppress running header on Page 1 only
#set page(header: none)

// 1. TOP TITLE & BRAND BLOCK (Top 35% of Page)
#v(1.2em)
#text(font: "Inter", weight: "bold", size: 10pt, fill: accent-gold, tracking: 1.5pt)[
  SCIENCE BEHIND THINGS  |  AP PHYSICS C: MECHANICS
]
#v(0.4em)
#text(font: "Inter", weight: "black", size: 28pt, fill: primary-navy, hyphenate: false)[
  THE KINEMATICS VAULT
]
#v(0.2em)
#text(font: "New Computer Modern", style: "italic", size: 13pt, fill: rgb("#475569"))[
  First-Principles Calculus Derivations & Exam-Caliber Mastery Blueprint
]
#v(0.8em)
#text(font: "Inter", size: 9.5pt, fill: rgb("#64748B"))[
  Published by *Promise Media and Education, LLC*  •  `sciencebehindthings.com`
]
#v(0.6em)
// Thin 1.5 pt horizontal divider directly beneath credit line
#line(length: 100%, stroke: 1.5pt + primary-navy)

#v(1.8em)

// 2. UPDATED TABLE OF CONTENTS (Middle 40% of Page)
#text(font: "Inter", weight: "bold", size: 12pt, fill: primary-navy, tracking: 0.8pt)[
  VAULT ARCHITECTURE & 20-PAGE LAYOUT MAP
]
#v(0.6em)

// Helper function for clean, aligned TOC rows
#let toc-item(sec, title, desc, pages) = {
  grid(
    columns: (1fr, auto),
    gutter: 12pt,
    [
      #text(font: "Inter", weight: "bold", size: 10.5pt, fill: primary-navy)[#sec: #title] \
      #text(size: 9.5pt, fill: rgb("#475569"))[#desc]
    ],
    align(right + top)[
      #text(font: "Inter", weight: "bold", size: 9.5pt, fill: accent-gold)[#pages]
    ]
  )
  v(0.65em)
}

#toc-item(
  "Section 1",
  "Cover & The Executive Protocol",
  "SI Unit Standards & The 4-Step First-Principles Framework",
  "Pages 1–2"
)
#toc-item(
  "Section 2",
  "Master Kinematics Flowchart & Hidden Clue Decoder",
  "Decision Tree & Word-Problem Translation Table",
  "Pages 3–5"
)
#toc-item(
  "Section 3",
  "The Calculus Bridge",
  "Differentiation/Integration Ladder & Variable Acceleration Templates",
  "Pages 6–9"
)
#toc-item(
  "Section 4",
  "4 Graded AP-Style Free-Response Questions & Solutions",
  "Full Calculus Derivations & Point-by-Point Scoring Rubrics",
  "Pages 10–17"
)
#toc-item(
  "Section 5",
  "Top 7 Score Killers & Student FAQ",
  "Pre-Exam Diagnostic Checklist & Common Trap Answers",
  "Pages 18–20"
)

// Push the bottom callout box cleanly to the lower portion of Page 1
#v(1fr)

// 3. "HOW TO USE THIS VAULT" BOX (Bottom 25% of Page)
#block(
  width: 100%,
  fill: box-gray,
  stroke: 0.5pt + rgb("#CBD5E1"),
  inset: 14pt,
  radius: 4pt,
  [
    #text(font: "Inter", weight: "bold", size: 10pt, fill: primary-navy)[
      HOW TO USE THIS VAULT FOR MAXIMUM EXAM SCORE GAINS
    ]
    #v(0.4em)
    #set list(marker: text(fill: accent-gold, weight: "bold")[▸], spacing: 0.5em)
    - *Start with Section 2 first:* Study the Master Kinematics Flowchart and Hidden Clue Decoder before attempting any practice derivations so you learn how to translate dense word problems into calculus boundary conditions.
    - *Simulate real exam pressure on Pages 10–17:* Time yourself strictly (15 minutes per FRQ) on the blank problem pages without peeking at the facing full-derivation solution and rubric pages.
    - *Review Section 5 the night before the exam:* Run through the Top 7 Score Killers diagnostic checklist to eliminate common sign errors, missing constants of integration, and unit mistakes.
  ]
)

// 4. HARD PAGE BREAK (Forces Section 1's Executive Protocol onto Page 2)
#pagebreak()
// ==========================================
// PAGE 2: SECTION 1 — THE EXECUTIVE PROTOCOL
// ==========================================

// Re-enable the running header for Page 2 onward
#set page(
  header: context [
    #set text(size: 8.5pt, fill: luma(120), font: "Inter")
    *AP PHYSICS C: MECHANICS — THE KINEMATICS VAULT*
    #h(1fr)
    Promise Media & Education
    #line(length: 100%, stroke: 0.5pt + luma(200))
  ]
)

// 1. TOP SECTION BANNER
#block(
  width: 100%,
  fill: rgb("#1E293B"),
  inset: (x: 12pt, y: 10pt),
  radius: 3pt,
  text(font: "Inter", weight: "bold", size: 11.5pt, fill: white, tracking: 1pt)[
    SECTION 1  |  THE EXECUTIVE PROTOCOL
  ]
)

#v(0.8em)

// 2. PART A: SI UNIT & SIGN CONVENTION STANDARDS (Top ~35% of Page)
#text(font: "Inter", weight: "bold", size: 10.5pt, fill: rgb("#0F172A"))[
  PART A: STANDARD EXAM UNITS & CONVENTIONS
]
#v(0.3em)

#set table(
  stroke: 0.5pt + rgb("#CBD5E1"),
  inset: 8pt,
  align: left + horizon,
)

#table(
  columns: (1.4fr, 1.1fr, 3.2fr),
  fill: (_, y) => if y == 0 { rgb("#0F172A") } else if calc.odd(y) { white } else { rgb("#F8FAFC") },
  table.header(
    text(font: "Inter", weight: "bold", size: 9pt, fill: white)[Quantity],
    text(font: "Inter", weight: "bold", size: 9pt, fill: white)[Mandatory SI Unit],
    text(font: "Inter", weight: "bold", size: 9pt, fill: white)[Exam Rule & Note],
  ),
  [*Position & Displacement*],
  [Meters ($"m"$)],
  [Convert all centimeters ($"cm"$) or kilometers ($"km"$) to meters before substituting into any equation.],

  [*Velocity*],
  [Meters per second ($"m/s"$)],
  [Define positive ($+$) and negative ($-$) coordinate directions explicitly before writing kinematic equations.],

  [*Acceleration & Gravity*],
  [Meters per second squared ($"m/s"^2$)],
  [Use $g = 9.8 "m/s"^2$ downward. _(Note: US students accustomed to Imperial units, $32.2 "ft/s"^2$, must strictly use metric SI values on the AP exam.)_],

  [*Time*],
  [Seconds ($"s"$)],
  [Convert all minutes or hours into seconds immediately; never leave mixed time units in rate equations.],
)

#v(1.1em)

// 3. PART B: THE 4-STEP FIRST-PRINCIPLES FRAMEWORK (Bottom ~55% of Page)
#text(font: "Inter", weight: "bold", size: 10.5pt, fill: rgb("#0F172A"))[
  PART B: THE 4-STEP FIRST-PRINCIPLES FRAMEWORK
]
#v(0.3em)

// Helper for Step Badges in the 1.2-inch left column
#let step-badge(num) = align(center)[
  #block(
    width: 100%,
    fill: rgb("#0F172A"),
    inset: (y: 6pt, x: 4pt),
    radius: 3pt,
    [
      #text(font: "Inter", weight: "bold", size: 8pt, fill: rgb("#D97706"), tracking: 0.8pt)[STEP] \
      #text(font: "Inter", weight: "black", size: 14pt, fill: white)[#num]
    ]
  )
]

#table(
  columns: (1.2in, 1fr), // Matches your 1.2 in badge column + remaining page width (~5.7 in)
  stroke: 0.5pt + rgb("#CBD5E1"),
  inset: 9pt,
  align: (center + horizon, left + horizon),
  fill: (_, y) => if calc.even(y) { rgb("#F8FAFC") } else { white },

  step-badge("01"),
  [
    #text(font: "Inter", weight: "bold", size: 10pt, fill: rgb("#0F172A"))[Establish the Frame] \
    #v(2pt)
    Define the coordinate origin ($x = 0$) and choose the positive axis direction. Sketch a quick motion diagram showing initial velocity ($arrow(v)_0$) and acceleration ($arrow(a)$) vectors.
  ],

  step-badge("02"),
  [
    #text(font: "Inter", weight: "bold", size: 10pt, fill: rgb("#0F172A"))[Extract Boundary Conditions] \
    #v(2pt)
    Translate word-problem clues into explicit initial and final values ($t_0, x_0, v_0$) before touching any formula.
  ],

  step-badge("03"),
  [
    #text(font: "Inter", weight: "bold", size: 10pt, fill: rgb("#0F172A"))[Identify Acceleration Type] \
    #v(2pt)
    Check whether acceleration is constant or a function of time $a(t)$, velocity $a(v)$, or position $a(x)$. *Never use algebraic shortcuts if acceleration varies.*
  ],

  step-badge("04"),
  [
    #text(font: "Inter", weight: "bold", size: 10pt, fill: rgb("#0F172A"))[Execute Calculus & Verify] \
    #v(2pt)
    Set up definite integrals with matching limits or separate variables cleanly. Verify that your final algebraic expression carries valid SI units.
  ],
)

// 4. HARD PAGE BREAK (Starts Section 2 cleanly at the top of Page 3)
#pagebreak()
// ==========================================
// PAGE 3: SECTION 2 — MASTER KINEMATICS DECISION TREE
// ==========================================

// 1. TOP SECTION BANNER
#block(
  width: 100%,
  fill: rgb("#1E293B"),
  inset: (x: 12pt, y: 10pt),
  radius: 3pt,
  text(font: "Inter", weight: "bold", size: 11.5pt, fill: white, tracking: 1pt)[
    SECTION 2  |  MASTER KINEMATICS DECISION TREE
  ]
)

#v(0.7em)

// 2. START NODE (Centered 3.8-inch Starting Box)
#align(center)[
  #block(
    width: 3.8in,
    fill: rgb("#0F172A"),
    stroke: 1.5pt + rgb("#D97706"),
    inset: (x: 14pt, y: 10pt),
    radius: 6pt,
    [
      #text(font: "Inter", weight: "bold", size: 8.5pt, fill: rgb("#D97706"), tracking: 1pt)[START HERE] \
      #v(2pt)
      #text(font: "Inter", weight: "bold", size: 10.5pt, fill: white)[
        Examine the Acceleration Expression ($a$)
      ]
    ]
  )
]

// Geometric Split Connector (Start Box -> Left & Right Branches)
#align(center)[
  #line(angle: 90deg, length: 12pt, stroke: 1.5pt + rgb("#475569"))
  #v(-12pt)
  #line(length: 52%, stroke: 1.5pt + rgb("#475569"))
  #grid(
    columns: (52%,),
    [
      #align(left)[#line(angle: 90deg, length: 12pt, stroke: 1.5pt + rgb("#0F172A"))]
      #v(-24pt)
      #align(right)[#line(angle: 90deg, length: 12pt, stroke: 1.5pt + rgb("#DC2626"))]
    ]
  )
]

#v(-2pt)

// 3. PRIMARY BINARY BRANCHES (Left: Constant vs. Right: Variable)
#grid(
  columns: (1fr, 1fr),
  gutter: 14pt,

  // LEFT BRANCH: CONSTANT ACCELERATION
  block(
    width: 100%,
    fill: rgb("#F8FAFC"),
    stroke: 1.5pt + rgb("#0F172A"),
    inset: 10pt,
    radius: 5pt,
    [
      #align(center)[
        #text(font: "Inter", weight: "bold", size: 8.5pt, fill: rgb("#0F172A"), tracking: 0.6pt)[PATH 1: CONSTANT] \
        #v(2pt)
        #text(font: "Inter", weight: "bold", size: 9.5pt, fill: rgb("#1E293B"))[
          Is $a$ a constant number?
        ] \
        #text(size: 8.5pt, fill: rgb("#475569"))[
          _(e.g., $a = -9.8 "m/s"^2$ or $a = 4.0 "m/s"^2$)_
        ]
      ]
    ]
  ),

  // RIGHT BRANCH: VARIABLE ACCELERATION
  block(
    width: 100%,
    fill: rgb("#FEF2F2"),
    stroke: 1.5pt + rgb("#DC2626"),
    inset: 10pt,
    radius: 5pt,
    [
      #align(center)[
        #text(font: "Inter", weight: "bold", size: 8.5pt, fill: rgb("#DC2626"), tracking: 0.6pt)[PATH 2: VARIABLE] \
        #v(2pt)
        #text(font: "Inter", weight: "bold", size: 9.5pt, fill: rgb("#1E293B"))[
          Does $a$ contain a variable?
        ] \
        #text(size: 8.5pt, fill: rgb("#475569"))[
          _(e.g., $t$, $v$, or $x$)_
        ]
      ]
    ]
  )
)

// Vertical Downward Connectors from Primary Branches
#grid(
  columns: (1fr, 1fr),
  gutter: 14pt,
  align(center)[#line(angle: 90deg, length: 14pt, stroke: 1.5pt + rgb("#0F172A"))],
  align(center)[#line(angle: 90deg, length: 14pt, stroke: 1.5pt + rgb("#DC2626"))]
)

#v(-2pt)

// 4. BRANCH OUTCOMES (Left Action Card + Right Calculus Header)
#grid(
  columns: (1fr, 1fr),
  gutter: 14pt,

  // LEFT OUTCOME: ALGEBRAIC SHORTCUTS ("THE BIG FOUR")
  block(
    width: 100%,
    fill: white,
    stroke: (top: 4pt + rgb("#0F172A"), rest: 0.75pt + rgb("#CBD5E1")),
    inset: 11pt,
    radius: 4pt,
    [
      #text(font: "Inter", weight: "bold", size: 9.5pt, fill: rgb("#0F172A"))[
        USE ALGEBRAIC SHORTCUTS ("THE BIG FOUR")
      ]
      #v(4pt)
      #line(length: 100%, stroke: 0.5pt + rgb("#E2E8F0"))
      #v(4pt)
      #text(font: "Inter", weight: "bold", size: 8.5pt, fill: rgb("#D97706"))[MANDATORY CONDITION CHECK:] \
      #text(size: 9pt)[
        Verify that acceleration *never changes direction or magnitude* during the time interval. If acceleration changes in stages, split the problem into separate time intervals and reset initial conditions ($x_0, v_0$) at each boundary.
      ]
    ]
  ),

  // RIGHT OUTCOME HEADER: CALCULUS REQUIRED
  block(
    width: 100%,
    fill: rgb("#DC2626"),
    inset: 11pt,
    radius: 4pt,
    [
      #align(center)[
        #text(font: "Inter", weight: "bold", size: 10pt, fill: white)[
          ALGEBRAIC EQUATIONS ARE FORBIDDEN
        ]
        #v(4pt)
        #text(size: 9pt, fill: rgb("#FEE2E2"))[
          Identify which independent variable appears inside $a$ and follow the exact calculus path below:
        ]
      ]
    ]
  )
)

#v(0.6em)

// 5. VARIABLE ACCELERATION SUB-PATHS (Paths A, B, and C)
#text(font: "Inter", weight: "bold", size: 9.5pt, fill: rgb("#DC2626"), tracking: 0.5pt)[
  VARIABLE ACCELERATION CALCULUS ROUTES (CHOOSE ONE):
]
#v(0.35em)

// Helper function for clean, high-contrast Calculus Path cards
#let calc-path(badge, title, method, formula) = {
  block(
    width: 100%,
    fill: rgb("#F8FAFC"),
    stroke: (left: 4pt + rgb("#DC2626"), rest: 0.5pt + rgb("#CBD5E1")),
    inset: 9pt,
    radius: (right: 4pt),
    grid(
      columns: (1.55fr, 1.35fr),
      gutter: 10pt,
      align: left + horizon,
      [
        #text(font: "Inter", weight: "bold", size: 8pt, fill: rgb("#DC2626"))[#badge] \
        #text(font: "Inter", weight: "bold", size: 10pt, fill: rgb("#0F172A"))[#title] \
        #v(2pt)
        #text(size: 8.8pt, fill: rgb("#334155"))[#method]
      ],
      align(center + horizon)[
        #block(
          width: 100%,
          fill: white,
          stroke: 0.75pt + rgb("#CBD5E1"),
          inset: (x: 8pt, y: 7pt),
          radius: 3pt,
          text(size: 9.5pt)[#formula]
        )
      ]
    )
  )
  v(0.45em)
}

#calc-path(
  "PATH A — TIME DEPENDENT",
  "Given a(t)",
  "Direct integration with respect to time. Integrate once for velocity, and a second time for position.",
  [
    $ v(t) = v_0 + integral_(t_0)^t a(t) \, d t $ \
    $ x(t) = x_0 + integral_(t_0)^t v(t) \, d t $
  ]
)

#calc-path(
  "PATH B — VELOCITY DEPENDENT",
  "Given a(v)",
  "Separate variables. Rewrite acceleration as (dv)/(dt), group all v terms with dv, and integrate.",
  [
    $ (d v)/(d t) = a(v) quad arrow.r.double quad integral_(v_0)^v (d v)/(a(v)) = integral_(t_0)^t d t $
  ]
)

#calc-path(
  "PATH C — POSITION DEPENDENT",
  "Given a(x)",
  "Chain-rule substitution. Replace a with v(dv)/(dx), separate variables, and integrate over position.",
  [
    $ v (d v)/(d x) = a(x) quad arrow.r.double quad integral_(v_0)^v v \, d v = integral_(x_0)^x a(x) \, d x $
  ]
)

// 6. HARD PAGE BREAK (Starts Page 4 cleanly)
#pagebreak()
// ==========================================
// PAGE 4: SECTION 2 — HIDDEN CLUE WORD-PROBLEM TRANSLATION TABLE
// ==========================================

// 1. PAGE HEADER & LEAD-IN
#text(font: "Inter", weight: "bold", size: 14pt, fill: rgb("#0F172A"))[
  HIDDEN CLUE WORD-PROBLEM TRANSLATION TABLE
]
#v(0.2em)
#line(length: 100%, stroke: 1pt + rgb("#D97706"))
#v(0.4em)
#text(size: 10pt, fill: rgb("#334155"))[
  Translate these ten AP exam phrases into mathematical boundary conditions before selecting an equation.
]

#v(0.8em)

// 2. 3-COLUMN, 11-ROW TRANSLATION TABLE
#table(
  columns: (2.05in, 1.55in, 1fr), // Proportional to 2.2", 1.6", 3.4" across full page width
  stroke: 0.5pt + rgb("#CBD5E1"),
  inset: (x: 8pt, y: 8.5pt),
  align: (left + horizon, left + horizon, left + horizon),
  fill: (_, y) => if y == 0 { rgb("#0F172A") } else if calc.odd(y) { white } else { rgb("#F8FAFC") },

  table.header(
    text(font: "Inter", weight: "bold", size: 9.5pt, fill: white)[Exam Phrase],
    text(font: "Inter", weight: "bold", size: 9.5pt, fill: white)[Math Translation],
    text(font: "Inter", weight: "bold", size: 9.5pt, fill: white)[Execution Rule],
  ),

  // Row 1
  [*"Starts from rest"*],
  [$v_0 = 0 "m/s"$],
  [Set initial velocity to zero at $t = 0 "s"$.],

  // Row 2
  [*"Dropped"* or *"Released"*],
  [$v_0 = 0 "m/s"$, $a = -g$],
  [Object has zero initial velocity relative to the ground unless dropped from a moving vehicle.],

  // Row 3
  [*"Comes to a stop"*],
  [$v_f = 0 "m/s"$],
  [Applies at the final instant of the interval; acceleration is not necessarily zero.],

  // Row 4
  [*"At maximum height"*],
  [$v_y = 0 "m/s"$],
  [Vertical velocity momentarily hits zero; acceleration remains $-9.8 "m/s"^2$ downward.],

  // Row 5
  [*"Returns to starting point"*],
  [$Delta x = 0 "m"$],
  [Net displacement is zero, even though total distance traveled is positive.],

  // Row 6
  [*"Constant velocity"*],
  [$a = 0 "m/s"^2$],
  [Net force is zero; velocity does not change in magnitude or direction.],

  // Row 7
  [*"Terminal velocity reached"*],
  [$a(v_T) = 0 "m/s"^2$],
  [Set the $a(v)$ expression equal to zero and solve algebraically for $v_T$.],

  // Row 8
  [*"Just misses"* or *"Collides"*],
  [$x_1(t) = x_2(t)$],
  [Set the position functions of both objects equal at the same instant $t$.],

  // Row 9
  [*"Maximum speed achieved"*],
  [$a(t) = 0$ or $(d v)/(d t) = 0$],
  [Take the derivative of velocity, set it to zero, and solve for $t$.],

  // Row 10
  [*"Uniformly accelerated"*],
  [$a = "constant"$],
  [Grants permission to use constant-acceleration equations without calculus.],
)

// 3. HARD PAGE BREAK (Starts Page 5 cleanly)
#pagebreak()
// ==========================================
// PAGE 5: SECTION 2 — FIRST-PRINCIPLES CONSTANT-ACCELERATION DERIVATIONS
// ==========================================

// 1. PAGE HEADER & LEAD-IN
#text(font: "Inter", weight: "bold", size: 14pt, fill: rgb("#0F172A"))[
  FIRST-PRINCIPLES CONSTANT-ACCELERATION DERIVATIONS
]
#v(0.2em)
#line(length: 100%, stroke: 1pt + rgb("#D97706"))
#v(0.35em)
#text(size: 9.8pt, fill: rgb("#334155"))[
  Every algebraic kinematics formula is a special-case integral valid *only* when acceleration $a$ is strictly constant.
]

#v(0.7em)

// 2. TOP SECTION (~65% of Page) — THE THREE CORE INTEGRATIONS
#table(
  columns: (1.35fr, 1fr),
  stroke: 0.5pt + rgb("#CBD5E1"),
  inset: 10pt,
  align: (left + horizon, left + horizon),
  fill: (_, y) => if y == 0 { rgb("#0F172A") } else if calc.odd(y) { white } else { rgb("#F8FAFC") },

  table.header(
    text(font: "Inter", weight: "bold", size: 9.5pt, fill: white)[Calculus Proof & Definite Integral Setup],
    text(font: "Inter", weight: "bold", size: 9.5pt, fill: white)[Resulting Algebraic Shortcut],
  ),

  // Derivation 1: Velocity as a Function of Time
  [
    #text(font: "Inter", weight: "bold", size: 9.5pt, fill: rgb("#0F172A"))[
      1. Velocity as a Function of Time
    ] \
    #v(3pt)
    Start with $a = (d v)/(d t)$. Separate variables to get $d v = a \, d t$. Integrate from $v_0$ to $v$ and $0$ to $t$:
    $ integral_(v_0)^v d v = integral_0^t a \, d t $
  ],
  [
    Since $a$ is constant, it pulls outside the integral, yielding:
    #v(4pt)
    #align(center)[
      #block(
        fill: white,
        stroke: 1pt + rgb("#0F172A"),
        inset: (x: 12pt, y: 7pt),
        radius: 3pt,
        $ v(t) = v_0 + a t $
      )
    ]
  ],

  // Derivation 2: Position as a Function of Time
  [
    #text(font: "Inter", weight: "bold", size: 9.5pt, fill: rgb("#0F172A"))[
      2. Position as a Function of Time
    ] \
    #v(3pt)
    Substitute $v(t)$ into $v = (d x)/(d t)$ to get $d x = (v_0 + a t) \, d t$. Integrate from $x_0$ to $x$ and $0$ to $t$:
    $ integral_(x_0)^x d x = integral_0^t (v_0 + a t) \, d t $
  ],
  [
    Evaluating the definite integral term-by-term yields:
    #v(4pt)
    #align(center)[
      #block(
        fill: white,
        stroke: 1pt + rgb("#0F172A"),
        inset: (x: 12pt, y: 7pt),
        radius: 3pt,
        $ x(t) = x_0 + v_0 t + 1/2 a t^2 $
      )
    ]
  ],

  // Derivation 3: Time-Independent Velocity
  [
    #text(font: "Inter", weight: "bold", size: 9.5pt, fill: rgb("#0F172A"))[
      3. Time-Independent Velocity
    ] \
    #v(3pt)
    Apply the chain rule $a = v (d v)/(d x)$. Separate variables to get $v \, d v = a \, d x$. Integrate from $v_0$ to $v$ and $x_0$ to $x$:
    $ integral_(v_0)^v v \, d v = integral_(x_0)^x a \, d x $
  ],
  [
    Evaluating both sides gives $1/2 (v^2 - v_0^2) = a(x - x_0)$, which rearranges to:
    #v(4pt)
    #align(center)[
      #block(
        fill: white,
        stroke: 1pt + rgb("#0F172A"),
        inset: (x: 12pt, y: 7pt),
        radius: 3pt,
        $ v^2 = v_0^2 + 2 a Delta x $
      )
    ]
  ],
)

// Push the warning box cleanly into the bottom third of Page 5
#v(1fr)

// 3. BOTTOM SECTION (~35% of Page) — THE ILLEGAL SHORTCUT WARNING BOX
#block(
  width: 100%,
  fill: rgb("#FEF2F2"),
  stroke: (left: 4pt + rgb("#DC2626"), rest: 1pt + rgb("#DC2626")),
  inset: 14pt,
  radius: 4pt,
  [
    #text(font: "Inter", weight: "bold", size: 10.5pt, fill: rgb("#DC2626"), tracking: 0.5pt)[
      ⚠ CRITICAL AP EXAM WARNING: WHEN THESE EQUATIONS FAIL
    ]
    #v(5pt)
    #text(size: 9.8pt, fill: rgb("#1E293B"))[
      Never apply the three equations above if acceleration contains a variable such as $a(t) = 3t$, $a(v) = -k v$, or $a(x) = -4x$. On AP Physics C Free-Response Questions, plugging variable acceleration into $x = x_0 + v_0 t + 1/2 a t^2$ results in an *immediate zero* for the derivation points. Always return to $a = (d v)/(d t)$ or $a = v (d v)/(d x)$.
    ]
  ]
)

// 4. HARD PAGE BREAK (Starts Section 3 cleanly on Page 6)
#pagebreak()
// ==========================================
// PAGE 6: SECTION 3 — THE DIFFERENTIATION & INTEGRATION LADDER
// ==========================================

// 1. TOP SECTION BANNER
#block(
  width: 100%,
  fill: rgb("#1E293B"),
  inset: (x: 12pt, y: 10pt),
  radius: 3pt,
  text(font: "Inter", weight: "bold", size: 11.5pt, fill: white, tracking: 1pt)[
    SECTION 3  |  THE CALCULUS BRIDGE
  ]
)

#v(0.7em)

// 2. TOP HALF (~50% of Page) — THE VISUAL KINEMATICS LADDER
#text(font: "Inter", weight: "bold", size: 11pt, fill: rgb("#0F172A"))[
  THE VISUAL KINEMATICS LADDER (ANALYTICAL & GRAPHICAL)
]
#v(0.25em)
#text(size: 9.5pt, fill: rgb("#334155"))[
  Move *down* the ladder by taking time derivatives (graph slopes) and *up* the ladder by evaluating definite integrals (signed areas).
]
#v(0.5em)

#table(
  columns: (1.15fr, 1fr, 1.15fr),
  stroke: 0.5pt + rgb("#CBD5E1"),
  inset: (x: 8pt, y: 11pt),
  align: center + horizon,
  fill: (x, y) => {
    if y == 0 { rgb("#0F172A") }
    else if x == 1 { rgb("#FEF3C7") } // Subtle gold tint on the central Quantity column
    else if calc.odd(y) { white }
    else { rgb("#F8FAFC") }
  },

  table.header(
    text(font: "Inter", weight: "bold", size: 9pt, fill: white)[Going Down (Differentiate $d/(d t)$ / Slope)],
    text(font: "Inter", weight: "bold", size: 9pt, fill: white)[Kinematics Quantity],
    text(font: "Inter", weight: "bold", size: 9pt, fill: white)[Going Up (Integrate $integral d t$ / Area)],
  ),

  // Row 1: Position
  [
    #text(size: 10.5pt, weight: "bold", fill: rgb("#0F172A"))[
      $arrow.b quad v(t) = (d x)/(d t)$
    ] \
    #v(2pt)
    #text(size: 8.8pt, fill: rgb("#475569"))[(Slope of $x$-$t$ graph)]
  ],
  [
    #text(font: "Inter", weight: "black", size: 10.5pt, fill: rgb("#0F172A"))[POSITION: $x(t)$] \
    #v(2pt)
    #text(size: 8.8pt, fill: rgb("#334155"))[(Units: $"m"$)]
  ],
  [
    #text(size: 10.5pt, weight: "bold", fill: rgb("#0F172A"))[
      $arrow.t quad Delta x = integral_(t_1)^(t_2) v(t) \, d t$
    ] \
    #v(2pt)
    #text(size: 8.8pt, fill: rgb("#475569"))[(Signed area under $v$-$t$ graph)]
  ],

  // Row 2: Velocity
  [
    #text(size: 10.5pt, weight: "bold", fill: rgb("#0F172A"))[
      $arrow.b quad a(t) = (d v)/(d t) = (d^2 x)/(d t^2)$
    ] \
    #v(2pt)
    #text(size: 8.8pt, fill: rgb("#475569"))[(Slope of $v$-$t$ graph)]
  ],
  [
    #text(font: "Inter", weight: "black", size: 10.5pt, fill: rgb("#0F172A"))[VELOCITY: $v(t)$] \
    #v(2pt)
    #text(size: 8.8pt, fill: rgb("#334155"))[(Units: $"m/s"$)]
  ],
  [
    #text(size: 10.5pt, weight: "bold", fill: rgb("#0F172A"))[
      $arrow.t quad Delta v = integral_(t_1)^(t_2) a(t) \, d t$
    ] \
    #v(2pt)
    #text(size: 8.8pt, fill: rgb("#475569"))[(Signed area under $a$-$t$ graph)]
  ],

  // Row 3: Acceleration
  [
    #text(font: "Inter", weight: "bold", size: 9pt, fill: rgb("#64748B"))[End of Standard Chain] \
    #v(2pt)
    #text(size: 8.8pt, fill: rgb("#475569"))[(Jerk $j = (d a)/(d t)$)]
  ],
  [
    #text(font: "Inter", weight: "black", size: 10.5pt, fill: rgb("#0F172A"))[ACCELERATION: $a(t)$] \
    #v(2pt)
    #text(size: 8.8pt, fill: rgb("#334155"))[(Units: $"m/s"^2$)]
  ],
  [
    #text(font: "Inter", weight: "bold", size: 9.5pt, fill: rgb("#D97706"))[
      Start of Bottom-Up Integration
    ]
  ],
)

#v(1fr)

// 3. BOTTOM HALF (~50% of Page) — DEFINITE VS. INDEFINITE INTEGRATION RULES
#text(font: "Inter", weight: "bold", size: 11pt, fill: rgb("#0F172A"))[
  APPROVED AP PHYSICS C INTEGRATION PROTOCOLS
]
#v(0.25em)
#text(size: 9.5pt, fill: rgb("#334155"))[
  Select one of the two College Board-approved methods below so you never drop your initial boundary conditions ($x_0, v_0$).
]
#v(0.5em)

#table(
  columns: (1fr, 1fr),
  stroke: 0.5pt + rgb("#CBD5E1"),
  inset: 11pt,
  align: left + top,
  fill: (x, y) => {
    if y == 0 {
      if x == 0 { rgb("#0F172A") } else { rgb("#334155") }
    } else if x == 0 { rgb("#F8FAFC") }
    else { white }
  },

  table.header(
    text(font: "Inter", weight: "bold", size: 9.5pt, fill: white)[Method 1 — Definite Integrals (Recommended)],
    text(font: "Inter", weight: "bold", size: 9.5pt, fill: white)[Method 2 — Indefinite Integrals ($+ C$ Method)],
  ),

  // Left Cell: Method 1
  [
    Always match lower limits at initial time $t = t_0$ and upper limits at general time $t$. This embeds your boundary conditions automatically in one step.
    #v(6pt)
    #block(
      width: 100%,
      fill: white,
      stroke: 0.75pt + rgb("#0F172A"),
      inset: 8pt,
      radius: 3pt,
      [
        #text(font: "Inter", weight: "bold", size: 8pt, fill: rgb("#D97706"))[STANDARD EXAMPLE:] \
        $ integral_(v_0)^(v(t)) d v = integral_0^t a(t) \, d t $ \
        $ arrow.r.double quad v(t) - v_0 = integral_0^t a(t) \, d t $
      ]
    )
  ],

  // Right Cell: Method 2
  [
    Integrate without limits, immediately append $+ C$, and substitute $t = 0$ to solve explicitly for $C$ *before* moving to the next integration step.
    #v(6pt)
    #block(
      width: 100%,
      fill: rgb("#FEF2F2"),
      stroke: (left: 3pt + rgb("#DC2626"), rest: 0.5pt + rgb("#FECACA")),
      inset: 8pt,
      radius: (right: 3pt),
      [
        #text(font: "Inter", weight: "bold", size: 8pt, fill: rgb("#DC2626"))[⚠ RUBRIC WARNING:] \
        #text(size: 9pt)[
          Leaving $+ C$ unsolved—or carrying an unknown constant into a second integral—costs full derivation credit on AP scoring rubrics.
        ]
      ]
    )
  ],
)

// 4. HARD PAGE BREAK (Starts Page 7 cleanly)
#pagebreak()
// ==========================================
// PAGE 7: SECTION 3 — VARIABLE ACCELERATION PROTOCOL 1: a(t)
// ==========================================

// 1. PAGE HEADER
#text(font: "Inter", weight: "bold", size: 14pt, fill: rgb("#0F172A"))[
  PROTOCOL 1: TIME-DEPENDENT ACCELERATION $a(t)$
]
#v(0.2em)
#line(length: 100%, stroke: 1pt + rgb("#D97706"))
#v(0.35em)
#text(size: 9.8pt, fill: rgb("#334155"))[
  When acceleration is given explicitly as a function of time $t$, execute two sequential definite integrations from $t_0 = 0$ to $t$.
]

#v(0.7em)

// 2. TOP BOX (~45% of Page) — THE 3-STEP EXECUTION TEMPLATE
#block(
  width: 100%,
  fill: rgb("#F4F6F9"),
  stroke: (left: 4pt + rgb("#0F172A"), rest: 0.5pt + rgb("#CBD5E1")),
  inset: 13pt,
  radius: (right: 4pt),
  [
    #text(font: "Inter", weight: "bold", size: 10.5pt, fill: rgb("#0F172A"), tracking: 0.5pt)[
      THE 3-STEP EXECUTION TEMPLATE
    ]
    #v(6pt)

    // Step 1
    #text(font: "Inter", weight: "bold", size: 9.8pt, fill: rgb("#0F172A"))[
      Step 1 — Set Up Velocity Integral:
    ] \
    Write $(d v)/(d t) = a(t)$, separate differentials to $d v = a(t) \, d t$, and integrate from $0$ to $t$:
    $ v(t) = v_0 + integral_0^t a(t) \, d t $

    #v(4pt)

    // Step 2
    #text(font: "Inter", weight: "bold", size: 9.8pt, fill: rgb("#0F172A"))[
      Step 2 — Set Up Position Integral:
    ] \
    Substitute your new $v(t)$ function into $(d x)/(d t) = v(t)$ and integrate a second time from $0$ to $t$:
    $ x(t) = x_0 + integral_0^t v(t) \, d t $

    #v(4pt)

    // Step 3
    #text(font: "Inter", weight: "bold", size: 9.8pt, fill: rgb("#D97706"))[
      Step 3 — Check Turning Points (Distance vs. Displacement):
    ] \
    If asked for *total distance traveled* rather than net displacement, solve $v(t) = 0$ first, split the position integral at any sign-change times, and sum the absolute values.
  ]
)

#v(1em)

// 3. BOTTOM SECTION (~55% of Page) — WORKED EXAMPLE: a(t)
#text(font: "Inter", weight: "bold", size: 11pt, fill: rgb("#0F172A"))[
  WORKED EXAMPLE: POLYNOMIAL TIME-DEPENDENT ACCELERATION
]
#v(0.35em)

// Problem Statement Box
#block(
  width: 100%,
  fill: white,
  stroke: 0.75pt + rgb("#0F172A"),
  inset: 11pt,
  radius: 4pt,
  [
    #text(font: "Inter", weight: "bold", size: 9pt, fill: rgb("#D97706"))[EXAM-STYLE PROMPT:] \
    #v(2pt)
    A particle starts at $x_0 = 2.0 "m"$ with initial velocity $v_0 = -4.0 "m/s"$ and experiences time-dependent acceleration $a(t) = 6t - 2$ (in $"m/s"^2$). Derive explicit expressions for $v(t)$ and $x(t)$.
  ]
)

#v(0.7em)

// Step-by-Step Calculus Solution
#text(font: "Inter", weight: "bold", size: 9.8pt, fill: rgb("#0F172A"))[
  1. Derive Velocity $v(t)$ by Integrating $a(t)$:
]
$ v(t) = -4.0 + integral_0^t (6t - 2) \, d t = -4.0 + [ 3t^2 - 2t ]_0^t = 3t^2 - 2t - 4.0 "m/s" $

#align(center)[
  #block(
    fill: rgb("#F8FAFC"),
    stroke: 1pt + rgb("#0F172A"),
    inset: (x: 16pt, y: 7pt),
    radius: 3pt,
    $ v(t) = 3t^2 - 2t - 4.0 "m/s" $
  )
]

#v(0.6em)

#text(font: "Inter", weight: "bold", size: 9.8pt, fill: rgb("#0F172A"))[
  2. Derive Position $x(t)$ by Integrating $v(t)$:
]
$ x(t) = 2.0 + integral_0^t (3t^2 - 2t - 4.0) \, d t = 2.0 + [ t^3 - t^2 - 4.0t ]_0^t = t^3 - t^2 - 4.0t + 2.0 "m" $

#align(center)[
  #block(
    fill: rgb("#F8FAFC"),
    stroke: 1pt + rgb("#0F172A"),
    inset: (x: 16pt, y: 7pt),
    radius: 3pt,
    $ x(t) = t^3 - t^2 - 4.0t + 2.0 "m" $
  )
]

// 4. HARD PAGE BREAK (Starts Page 8 cleanly)
#pagebreak()
// ==========================================
// PAGE 8: SECTION 3 — VARIABLE ACCELERATION PROTOCOL 2: a(v)
// ==========================================

// 1. PAGE HEADER
#text(font: "Inter", weight: "bold", size: 14pt, fill: rgb("#0F172A"))[
  PROTOCOL 2: VELOCITY-DEPENDENT ACCELERATION $a(v)$
]
#v(0.2em)
#line(length: 100%, stroke: 1pt + rgb("#D97706"))
#v(0.35em)
#text(size: 9.8pt, fill: rgb("#334155"))[
  When acceleration depends on velocity $v$, you *cannot* integrate directly with respect to $t$. Separate variables first.
]

#v(0.65em)

// 2. TOP BOX (~50% of Page) — THE 4-STEP SEPARATION OF VARIABLES TEMPLATE
#block(
  width: 100%,
  fill: rgb("#F4F6F9"),
  stroke: (left: 4pt + rgb("#0F172A"), rest: 0.5pt + rgb("#CBD5E1")),
  inset: 12pt,
  radius: (right: 4pt),
  [
    #text(font: "Inter", weight: "bold", size: 10.5pt, fill: rgb("#0F172A"), tracking: 0.5pt)[
      THE 4-STEP SEPARATION OF VARIABLES TEMPLATE
    ]
    #v(5pt)

    // Step 1
    #text(font: "Inter", weight: "bold", size: 9.5pt, fill: rgb("#0F172A"))[
      Step 1 — Isolate Differentials:
    ] \
    Write $(d v)/(d t) = a(v)$. Divide both sides by $a(v)$ and multiply by $d t$ so all $v$ terms sit on the left:
    $ (d v)/(a(v)) = d t $

    #v(3pt)

    // Step 2
    #text(font: "Inter", weight: "bold", size: 9.5pt, fill: rgb("#0F172A"))[
      Step 2 — Integrate Both Sides:
    ] \
    Apply matching limits from $v_0$ to $v(t)$ on the left and $0$ to $t$ on the right:
    $ integral_(v_0)^(v(t)) (d v)/(a(v)) = integral_0^t d t $

    #v(3pt)

    // Step 3
    #text(font: "Inter", weight: "bold", size: 9.5pt, fill: rgb("#0F172A"))[
      Step 3 — Exponentiate to Solve for $v(t)$:
    ] \
    When $a(v)$ is linear in $v$, integration produces a natural logarithm ($ln$). Combine the logs into a single fraction and raise $e$ to both sides to isolate $v(t)$.

    #v(3pt)

    // Step 4
    #text(font: "Inter", weight: "bold", size: 9.5pt, fill: rgb("#D97706"))[
      Step 4 — Find Terminal Velocity ($v_T$):
    ] \
    Set $a(v_T) = 0$ directly in the original equation, or take the limit as $t arrow.r infinity$ where $e^(-k t) arrow.r 0$.
  ]
)

#v(0.85em)

// 3. BOTTOM SECTION (~50% of Page) — WORKED EXAMPLE: LINEAR RESISTIVE DRAG
#text(font: "Inter", weight: "bold", size: 11pt, fill: rgb("#0F172A"))[
  WORKED EXAMPLE: LINEAR RESISTIVE DRAG
]
#v(0.3em)

// Problem Statement Box
#block(
  width: 100%,
  fill: white,
  stroke: 0.75pt + rgb("#0F172A"),
  inset: 10pt,
  radius: 4pt,
  [
    #text(font: "Inter", weight: "bold", size: 9pt, fill: rgb("#D97706"))[EXAM-STYLE PROMPT:] \
    #v(2pt)
    A probe of mass $m$ is released from rest ($v_0 = 0$) in a fluid where $a(v) = g - b v$ (with $b = k/m$). Derive an explicit expression for velocity $v(t)$ and find the terminal velocity $v_T$.
  ]
)

#v(0.55em)

// Step-by-Step Calculus Solution
#text(font: "Inter", weight: "bold", size: 9.5pt, fill: rgb("#0F172A"))[
  1. Separate Variables and Integrate:
]
$ integral_0^v (d v)/(g - b v) = integral_0^t d t quad arrow.r.double quad -1/b ln((g - b v)/g) = t $

#v(0.35em)

#text(font: "Inter", weight: "bold", size: 9.5pt, fill: rgb("#0F172A"))[
  2. Multiply by $-b$, Exponentiate, and Isolate $v(t)$:
]
$ (g - b v)/g = e^(-b t) quad arrow.r.double quad v(t) = g/b (1 - e^(-b t)) $

#v(0.35em)

// Side-by-Side Final Answers for v(t) and Terminal Velocity v_T
#grid(
  columns: (1.35fr, 1fr),
  gutter: 12pt,
  block(
    width: 100%,
    fill: rgb("#F8FAFC"),
    stroke: 1pt + rgb("#0F172A"),
    inset: (x: 12pt, y: 7pt),
    radius: 3pt,
    align(center)[
      #text(font: "Inter", weight: "bold", size: 8pt, fill: rgb("#0F172A"))[VELOCITY FUNCTION:] \
      $ v(t) = g/b (1 - e^(-b t)) $
    ]
  ),
  block(
    width: 100%,
    fill: rgb("#FEF3C7"),
    stroke: 1pt + rgb("#D97706"),
    inset: (x: 12pt, y: 7pt),
    radius: 3pt,
    align(center)[
      #text(font: "Inter", weight: "bold", size: 8pt, fill: rgb("#D97706"))[TERMINAL VELOCITY ($t arrow.r infinity$):] \
      $ v_T = g/b $
    ]
  )
)

// 4. HARD PAGE BREAK (Starts Page 9 cleanly)
#pagebreak()
// ==========================================
// PAGE 9: SECTION 3 — VARIABLE ACCELERATION PROTOCOL 3: a(x)
// ==========================================

// 1. PAGE HEADER
#text(font: "Inter", weight: "bold", size: 14pt, fill: rgb("#0F172A"))[
  PROTOCOL 3: POSITION-DEPENDENT ACCELERATION $a(x)$
]
#v(0.2em)
#line(length: 100%, stroke: 1pt + rgb("#D97706"))
#v(0.35em)
#text(size: 9.8pt, fill: rgb("#334155"))[
  When acceleration is given as a function of position $x$ and time $t$ is absent, use the chain rule to eliminate $d t$.
]

#v(0.7em)

// 2. TOP BOX (~45% of Page) — THE CHAIN-RULE SUBSTITUTION TEMPLATE
#block(
  width: 100%,
  fill: rgb("#F4F6F9"),
  stroke: (left: 4pt + rgb("#0F172A"), rest: 0.5pt + rgb("#CBD5E1")),
  inset: 13pt,
  radius: (right: 4pt),
  [
    #text(font: "Inter", weight: "bold", size: 10.5pt, fill: rgb("#0F172A"), tracking: 0.5pt)[
      THE CHAIN-RULE SUBSTITUTION TEMPLATE
    ]
    #v(6pt)

    // Step 1
    #text(font: "Inter", weight: "bold", size: 9.8pt, fill: rgb("#0F172A"))[
      Step 1 — Apply the Chain Rule:
    ] \
    Because time $t$ is missing, rewrite acceleration by chaining velocity through position $x$:
    $ (d v)/(d t) = (d v)/(d x) (d x)/(d t) = v (d v)/(d x) $

    #v(4pt)

    // Step 2
    #text(font: "Inter", weight: "bold", size: 9.8pt, fill: rgb("#0F172A"))[
      Step 2 — Separate $v$ and $x$:
    ] \
    Set $v (d v)/(d x) = a(x)$ and multiply both sides by $d x$ to separate the variables cleanly:
    $ v \, d v = a(x) \, d x $

    #v(4pt)

    // Step 3
    #text(font: "Inter", weight: "bold", size: 9.8pt, fill: rgb("#D97706"))[
      Step 3 — Integrate with Spatial Limits:
    ] \
    Integrate velocity from $v_0$ to $v$ and position from $x_0$ to $x$:
    $ integral_(v_0)^v v \, d v = integral_(x_0)^x a(x) \, d x quad arrow.r.double quad 1/2 (v^2 - v_0^2) = integral_(x_0)^x a(x) \, d x $
  ]
)

#v(0.95em)

// 3. BOTTOM SECTION (~55% of Page) — WORKED EXAMPLE: a(x)
#text(font: "Inter", weight: "bold", size: 11pt, fill: rgb("#0F172A"))[
  WORKED EXAMPLE: POSITION-DEPENDENT ACCELERATION
]
#v(0.35em)

// Problem Statement Box
#block(
  width: 100%,
  fill: white,
  stroke: 0.75pt + rgb("#0F172A"),
  inset: 11pt,
  radius: 4pt,
  [
    #text(font: "Inter", weight: "bold", size: 9pt, fill: rgb("#D97706"))[EXAM-STYLE PROMPT:] \
    #v(2pt)
    A cart passes $x_0 = 1.0 "m"$ moving at $v_0 = 3.0 "m/s"$ under position-dependent acceleration $a(x) = 4x$ (in $"m/s"^2$). Find its speed $v$ at $x = 4.0 "m"$.
  ]
)

#v(0.65em)

// Step-by-Step Calculus Solution
#text(font: "Inter", weight: "bold", size: 9.8pt, fill: rgb("#0F172A"))[
  1. Set Up the Chain-Rule Definite Integral:
]
$ integral_(3.0)^v v \, d v = integral_(1.0)^(4.0) 4x \, d x $

#v(0.35em)

#text(font: "Inter", weight: "bold", size: 9.8pt, fill: rgb("#0F172A"))[
  2. Evaluate Both Sides with Matching Limits:
]
$ [ 1/2 v^2 ]_(3.0)^v = [ 2x^2 ]_(1.0)^(4.0) quad arrow.r.double quad 1/2 (v^2 - 9.0) = 2(16.0 - 1.0) = 30.0 $

#v(0.35em)

#text(font: "Inter", weight: "bold", size: 9.8pt, fill: rgb("#0F172A"))[
  3. Solve Algebraically for Speed $v$:
]
$ v^2 - 9.0 = 60.0 quad arrow.r.double quad v = sqrt(69.0) approx 8.31 "m/s" $

#v(0.3em)

#align(center)[
  #block(
    fill: rgb("#F8FAFC"),
    stroke: 1pt + rgb("#0F172A"),
    inset: (x: 18pt, y: 7pt),
    radius: 3pt,
    $ v = sqrt(69.0) approx 8.31 "m/s" $
  )
]

// 4. HARD PAGE BREAK (Starts Section 4 — Graded AP-Style FRQs cleanly on Page 10)
#pagebreak()
// ==========================================
// UPDATED EVEN-PAGE HELPERS (2-COLUMN EXAM BAR + WORKSPACE)
// ==========================================

// 2-Column, 1-Row Exam Header Bar (#F4F6F9)
#let exam-bar() = {
  table(
    columns: (1fr, 1fr),
    fill: rgb("#F4F6F9"),
    stroke: 0.5pt + rgb("#CBD5E1"),
    inset: (x: 10pt, y: 7pt),
    align: (left + horizon, right + horizon),
    text(font: "Inter", weight: "bold", size: 9.5pt, fill: rgb("#0F172A"))[Suggested Time: 15 Minutes],
    text(font: "Inter", weight: "bold", size: 9.5pt, fill: rgb("#0F172A"))[Total Points: 15 Points],
  )
}

// 1x1 Bordered Student Calculation Workspace (0.5 pt gray border)
#let student-workspace() = {
  v(0.5em)
  block(
    width: 100%,
    height: 1fr,
    fill: white,
    stroke: 0.5pt + rgb("#94A3B8"),
    inset: 10pt,
    radius: 2pt,
    [
      #text(font: "Inter", weight: "bold", size: 8pt, fill: rgb("#94A3B8"), tracking: 0.8pt)[
        STUDENT CALCULATION WORKSPACE — WRITE FULL INTEGRALS & BOUNDARY CONDITIONS BELOW
      ]
    ]
  )
}

// ==========================================
// PAGE 10: FRQ 1 PROMPT (MULTI-STAGE 1D KINEMATICS)
// ==========================================
#block(
  width: 100%,
  fill: rgb("#1E293B"),
  inset: (x: 12pt, y: 9pt),
  radius: 3pt,
  text(font: "Inter", weight: "bold", size: 11pt, fill: white, tracking: 0.8pt)[
    SECTION 4  |  GRADED AP-STYLE FREE-RESPONSE QUESTIONS
  ]
)
#v(0.4em)
#text(font: "Inter", weight: "bold", size: 12pt, fill: rgb("#0F172A"))[
  FRQ 1 — Multi-Stage Launch & Variable Braking
]
#v(0.3em)
#exam-bar()
#v(0.5em)

An electromagnetic test sled starts from rest at $x = 0$ at $t = 0$. During *Stage I* ($0 <= t <= 4.0 "s"$), the sled undergoes constant acceleration $a_1 = 5.0 "m/s"^2$. At $t = 4.0 "s"$, propulsion cuts off and magnetic eddy-current brakes engage (*Stage II*, $t >= 4.0 "s"$), producing time-dependent acceleration $a_2(t) = -4.0(t - 4.0)$ (in $"m/s"^2$).

#v(0.4em)
#set enum(spacing: 1.1em)
+ *(a)* Calculate the sled's velocity $v_1$ and position $x_1$ at the exact end of Stage I ($t = 4.0 "s"$).
+ *(b)* Derive an explicit expression for the sled's velocity $v_2(t)$ during Stage II ($t >= 4.0 "s"$).
+ *(c)* Determine the exact time $t_"stop"$ when the sled momentarily comes to rest.
+ *(d)* Calculate the total distance traveled by the sled from $t = 0$ until $t = t_"stop"$.

#student-workspace()
#pagebreak()

// [KEEP PAGE 11: FRQ 1 SOLUTION & RUBRIC HERE]

// ==========================================
// PAGE 12: FRQ 2 PROMPT (VELOCITY-DEPENDENT DRAG)
// ==========================================
#text(font: "Inter", weight: "bold", size: 14pt, fill: rgb("#0F172A"))[
  FRQ 2
]
#v(0.3em)
#exam-bar()
#v(0.5em)

A small weather sensor of mass $m = 0.50 "kg"$ is dropped from rest ($v_0 = 0$) from a high-altitude balloon. As it falls downward (define downward as the $+y$ direction), air resistance exerts an upward drag force $F_d = c v$, where $c = 0.25 "N" dot "s/m"$. Use $g = 9.8 "m/s"^2$.

#v(0.35em)
#set enum(spacing: 1.0em)
+ *(a)* Write Newton's Second Law in differential form for the falling sensor and show that $a(v) = g - (c/m)v$.
+ *(b)* Using separation of variables, derive an explicit expression for the sensor's downward speed $v(t)$ as a function of time $t$.
+ *(c)* Calculate the terminal velocity $v_T$ of the sensor and determine the time $t_(90\%)$ required to reach $90\%$ of $v_T$.
+ *(d)* On the axes below, sketch $v(t)$ and $a(t)$ from $t = 0$ to $t = 3 t_(90\%)$, clearly labeling asymptotic values and initial intercepts.

#v(0.3em)
// Built-in Blank Sketching Axes for Part (d)
#grid(
  columns: (1fr, 1fr),
  gutter: 14pt,
  block(
    width: 100%,
    stroke: 0.5pt + rgb("#CBD5E1"),
    fill: rgb("#F8FAFC"),
    inset: 8pt,
    radius: 3pt,
    [
      #text(font: "Inter", weight: "bold", size: 8pt, fill: rgb("#0F172A"))[Sketch $v(t)$ vs. $t$:]
      #v(4pt)
      #box(width: 100%, height: 68pt)[
        #place(bottom + left, dx: 18pt, dy: -8pt)[#line(length: 85%, stroke: 1pt + rgb("#0F172A"))]
        #place(bottom + left, dx: 18pt, dy: -8pt)[#line(angle: 90deg, length: 55pt, stroke: 1pt + rgb("#0F172A"))]
        #place(top + left, dx: 4pt, dy: 2pt)[#text(size: 8pt)[$v$]]
        #place(bottom + right, dx: -4pt, dy: -4pt)[#text(size: 8pt)[$t$]]
      ]
    ]
  ),
  block(
    width: 100%,
    stroke: 0.5pt + rgb("#CBD5E1"),
    fill: rgb("#F8FAFC"),
    inset: 8pt,
    radius: 3pt,
    [
      #text(font: "Inter", weight: "bold", size: 8pt, fill: rgb("#0F172A"))[Sketch $a(t)$ vs. $t$:]
      #v(4pt)
      #box(width: 100%, height: 68pt)[
        #place(bottom + left, dx: 18pt, dy: -8pt)[#line(length: 85%, stroke: 1pt + rgb("#0F172A"))]
        #place(bottom + left, dx: 18pt, dy: -8pt)[#line(angle: 90deg, length: 55pt, stroke: 1pt + rgb("#0F172A"))]
        #place(top + left, dx: 4pt, dy: 2pt)[#text(size: 8pt)[$a$]]
        #place(bottom + right, dx: -4pt, dy: -4pt)[#text(size: 8pt)[$t$]]
      ]
    ]
  )
)

#student-workspace()
#pagebreak()

// [KEEP PAGE 13: FRQ 2 SOLUTION & RUBRIC HERE]

// ==========================================
// PAGE 14: FRQ 3 PROMPT (POSITION-DEPENDENT ACCELERATION)
// ==========================================
#text(font: "Inter", weight: "bold", size: 14pt, fill: rgb("#0F172A"))[
  FRQ 3
]
#v(0.3em)
#exam-bar()
#v(0.5em)

A magnetic levitation capsule moves along a straight horizontal track along the $x$-axis. As it enters a nonlinear restoring field at $x_0 = 0$ with initial velocity $v_0 = +6.0 "m/s"$, its acceleration varies with position according to $a(x) = 4.0 - 3.0 x^2$ (where $a$ is in $"m/s"^2$ and $x$ is in $"m"$).

#v(0.4em)
#set enum(spacing: 1.1em)
+ *(a)* Apply the chain rule to express $a(x)$ in terms of $v$ and $(d v)/(d x)$, and derive an algebraic equation for speed squared $v^2(x)$ as a function of position $x$.
+ *(b)* Find the position $x_"max"$ where the capsule reaches its maximum speed, and calculate that maximum speed $v_"max"$.
+ *(c)* Determine the positive turning point $x_"turn" > 0$ where the capsule momentarily stops and reverses direction.
+ *(d)* Explain conceptually why the capsule oscillates back toward the origin after reaching $x_"turn"$, citing the sign of $a(x)$.

#student-workspace()
#pagebreak()

// [KEEP PAGE 15: FRQ 3 SOLUTION & RUBRIC HERE]

// ==========================================
// PAGE 16: FRQ 4 PROMPT (GRAPHICAL CALCULUS SYNTHESIS)
// ==========================================
#text(font: "Inter", weight: "bold", size: 14pt, fill: rgb("#0F172A"))[
  FRQ 4
]
#v(0.3em)
#exam-bar()
#v(0.45em)

An autonomous drone moves along a straight north-south corridor (take north as $+x$). At $t = 0$, the drone passes the charging pad at $x_0 = -5.0 "m"$. Its velocity $v(t)$ (in $"m/s"$) is shown in the piecewise graph below over $0 <= t <= 10.0 "s"$.

#v(0.25em)
// Vector Piecewise v(t) Graph
#align(center)[
  #block(
    width: 88%,
    fill: rgb("#F8FAFC"),
    stroke: 0.5pt + rgb("#CBD5E1"),
    inset: (x: 10pt, y: 6pt),
    radius: 3pt,
    [
      #box(width: 100%, height: 92pt)[
        // Horizontal t-axis (v = 0) at vertical center (dy: -46pt)
        #place(bottom + left, dx: 32pt, dy: -46pt)[#line(length: 86%, stroke: 1pt + rgb("#0F172A"))]
        // Vertical v-axis at left (dx: 32pt)
        #place(bottom + left, dx: 32pt, dy: -8pt)[#line(angle: 90deg, length: 78pt, stroke: 1pt + rgb("#0F172A"))]
        // Axis Labels
        #place(top + left, dx: 2pt, dy: 2pt)[#text(size: 7.5pt, weight: "bold")[$v ("m/s")$]]
        #place(bottom + left, dx: 12pt, dy: -75pt)[#text(size: 7.5pt)[$+6$]]
        #place(bottom + left, dx: 20pt, dy: -42pt)[#text(size: 7.5pt)[$0$]]
        #place(bottom + left, dx: 12pt, dy: -10pt)[#text(size: 7.5pt)[$-6$]]
        // Time Tick Labels along v = 0 axis
        #place(bottom + left, dx: 82pt, dy: -35pt)[#text(size: 7.5pt)[$2$]]
        #place(bottom + left, dx: 132pt, dy: -35pt)[#text(size: 7.5pt)[$4$]]
        #place(bottom + left, dx: 207pt, dy: -35pt)[#text(size: 7.5pt)[$7$]]
        #place(bottom + left, dx: 245pt, dy: -35pt)[#text(size: 7.5pt)[$8.5$]]
        #place(bottom + left, dx: 282pt, dy: -35pt)[#text(size: 7.5pt)[$10$]]
        #place(bottom + right, dx: -2pt, dy: -42pt)[#text(size: 7.5pt, weight: "bold")[$t ("s")$]]
        // Piecewise Velocity Curve Segments (25pt per second, 5.5pt per m/s)
        // Segment 1: (0, -6) -> (4, +6)
        #place(bottom + left, dx: 32pt, dy: -13pt)[#line(end: (100pt, -66pt), stroke: 2pt + rgb("#D97706"))]
        // Segment 2: (4, +6) -> (7, +6)
        #place(bottom + left, dx: 132pt, dy: -79pt)[#line(end: (75pt, 0pt), stroke: 2pt + rgb("#D97706"))]
        // Segment 3: (7, +6) -> (10, -6)
        #place(bottom + left, dx: 207pt, dy: -79pt)[#line(end: (75pt, 66pt), stroke: 2pt + rgb("#D97706"))]
      ]
    ]
  )
]

#v(0.25em)
#set enum(spacing: 0.9em)
+ *(a)* Find the exact times $t$ in $[0, 10.0 "s"]$ when the drone reverses direction, and state its acceleration $a(t)$ during each of the three linear intervals.
+ *(b)* Calculate the drone's net displacement $Delta x$ over the full $10.0 "s"$ interval and determine its final position $x(10.0 "s")$.
+ *(c)* Calculate the *total distance traveled* $D$ by the drone over $0 <= t <= 10.0 "s"$.
+ *(d)* Determine the maximum speed reached by the drone and the exact instant(s) when it occurs.

#student-workspace()
#pagebreak()
// ==========================================
// ODD-PAGE RUBRIC HELPER (PAGES 11, 13, 15, 17)
// ==========================================

#let rubric-page(frq-num, rows) = {
  // 1. Page Header
  text(font: "Inter", weight: "bold", size: 13.5pt, fill: rgb("#0F172A"))[
    FRQ #frq-num — OFFICIAL SOLUTION & SCORING RUBRIC
  ]
  v(0.2em)
  line(length: 100%, stroke: 1pt + rgb("#D97706"))
  v(0.55em)

  // 2. 3-Column AP Reader Grading Table (Proportional to 0.8" | 4.8" | 1.6")
  table(
    columns: (0.75in, 1fr, 1.55in),
    stroke: 0.5pt + rgb("#CBD5E1"),
    inset: (x: 7pt, y: 7.5pt),
    align: (center + top, left + top, left + top),
    fill: (_, y) => if y == 0 { rgb("#0F172A") } else if calc.odd(y) { white } else { rgb("#F8FAFC") },

    table.header(
      text(font: "Inter", weight: "bold", size: 8.5pt, fill: white)[Part],
      text(font: "Inter", weight: "bold", size: 8.5pt, fill: white)[First-Principles Calculus Derivation & Final Answer],
      text(font: "Inter", weight: "bold", size: 8.5pt, fill: white)[Point Breakdown],
    ),
    ..rows
  )

  // Push Self-Score Bar to the bottom of the page
  v(1fr)

  // 3. Bottom Single-Line Self-Score Callout Box
  block(
    width: 100%,
    fill: rgb("#F4F6F9"),
    stroke: (left: 4pt + rgb("#0F172A"), rest: 0.75pt + rgb("#CBD5E1")),
    inset: (x: 12pt, y: 8pt),
    radius: (right: 3pt),
    align(center)[
      #text(font: "Inter", weight: "bold", size: 9.5pt, fill: rgb("#0F172A"))[
        My Score: ______ / 15 Points  |  Target Benchmark: 11+ Points (5-Level Pace)
      ]
    ]
  )

  // 4. Hard Page Break
  pagebreak()
}

// ==========================================
// PAGE 11: FRQ 1 SOLUTION & RUBRIC
// ==========================================
#rubric-page(
  "1",
  (
    [*(a)*],
    [
      Constant acceleration applies on $0 <= t <= 4.0 "s"$ with $x_0 = 0$, $v_0 = 0$: \
      $v_1 = v_0 + a_1 t = 0 + (5.0 "m/s"^2)(4.0 "s") = boxed(20.0 "m/s")$ \
      $x_1 = x_0 + v_0 t + 1/2 a_1 t^2 = 0 + 0 + 1/2 (5.0)(4.0)^2 = boxed(40.0 "m")$
    ],
    [
      *+1 pt* Valid constant-$a$ setup \
      *+1 pt* Correct $v_1$ with units \
      *+1 pt* Correct $x_1$ with units \
      *(3 pts total)*
    ],

    [*(b)*],
    [
      Start with $(d v)/(d t) = a_2(t)$ and separate variables from $t_0 = 4.0 "s"$ ($v_0 = 20.0 "m/s"$): \
      $integral_(20.0)^(v_2(t)) d v = integral_(4.0)^t -4.0(t' - 4.0) \, d t'$ \
      $v_2(t) - 20.0 = [ -2.0(t' - 4.0)^2 ]_(4.0)^t = -2.0(t - 4.0)^2$ \
      $boxed(v_2(t) = 20.0 - 2.0(t - 4.0)^2 "m/s")$
    ],
    [
      *+1 pt* Separating variables \
      *+1 pt* Matching lower limits \
      *+1 pt* Correct antiderivative \
      *+1 pt* Final expression + units \
      *(4 pts total)*
    ],

    [*(c)*],
    [
      Set $v_2(t_"stop") = 0$ and solve for $t_"stop" > 4.0 "s"$: \
      $20.0 - 2.0(t_"stop" - 4.0)^2 = 0 arrow.r.double (t_"stop" - 4.0)^2 = 10.0$ \
      $t_"stop" = 4.0 + sqrt(10.0) approx boxed(7.16 "s")$
    ],
    [
      *+1 pt* Setting $v_2(t) = 0$ \
      *+1 pt* Selecting positive root \
      *+1 pt* Final $t_"stop"$ with units \
      *(3 pts total)*
    ],

    [*(d)*],
    [
      Since $v(t) >= 0$ for $0 <= t <= 7.16 "s"$, total distance equals $x(t_"stop")$: \
      $x(t_"stop") = x_1 + integral_(4.0)^(7.162) [20.0 - 2.0(t - 4.0)^2] \, d t$ \
      $x(t_"stop") = 40.0 + [ 20.0(t - 4.0) - 2/3 (t - 4.0)^3 ]_(4.0)^(4.0 + sqrt(10))$ \
      $x(t_"stop") = 40.0 + 20.0 sqrt(10) - 2/3 (10 sqrt(10)) = 40.0 + 40/3 sqrt(10) approx boxed(82.2 "m")$
    ],
    [
      *+1 pt* Adding $x_1 = 40.0 "m"$ \
      *+1 pt* Correct integral limits \
      *+2 pts* Correct antiderivative \
      *+1 pt* Final distance + units \
      *(5 pts total)*
    ],
  )
)

// ==========================================
// PAGE 13: FRQ 2 SOLUTION & RUBRIC
// ==========================================
#rubric-page(
  "2",
  (
    [*(a)*],
    [
      Taking $+y$ downward, gravity acts $+m g$ and drag acts $-c v$: \
      $sum F_y = m a_y arrow.r.double m g - c v = m (d v)/(d t)$ \
      Divide both sides by $m$: $boxed((d v)/(d t) = g - (c/m) v)$
    ],
    [
      *+1 pt* Correct force signs \
      *+1 pt* Using $a = (d v)/(d t)$ \
      *+1 pt* Dividing cleanly by $m$ \
      *(3 pts total)*
    ],

    [*(b)*],
    [
      Let $b = c/m = 0.25 / 0.50 = 0.50 "s"^(-1)$. Separate variables from $v_0 = 0$ to $v$: \
      $integral_0^v (d v')/(g - b v') = integral_0^t d t' arrow.r.double -1/b [ ln(g - b v') ]_0^v = t$ \
      $ln((g - b v)/g) = -b t arrow.r.double 1 - (b/g) v = e^(-b t)$ \
      $boxed(v(t) = (m g)/c (1 - e^(-(c/m)t)) = 19.6(1 - e^(-0.50 t)) "m/s")$
    ],
    [
      *+1 pt* Separating variables \
      *+1 pt* Correct log integral \
      *+1 pt* Applying limit $v_0 = 0$ \
      *+2 pts* Exponentiating to $v(t)$ \
      *(5 pts total)*
    ],

    [*(c)*],
    [
      Set $a(v_T) = 0$: $g - (c/m) v_T = 0 arrow.r.double v_T = (m g)/c = (0.50)(9.8)/0.25 = boxed(19.6 "m/s")$. \
      Set $v(t_(90\%)) = 0.90 v_T$: $1 - e^(-0.50 t_(90\%)) = 0.90 arrow.r.double e^(-0.50 t_(90\%)) = 0.10$ \
      $t_(90\%) = (-ln(0.10))/0.50 = (ln(10))/0.50 approx boxed(4.61 "s")$
    ],
    [
      *+1 pt* Solving for $v_T$ + units \
      *+1 pt* Setting $1 - e^(-b t) = 0.90$ \
      *+1 pt* Final $t_(90\%)$ + units \
      *(3 pts total)*
    ],

    [*(d)*],
    [
      *Graph 1 ($v$ vs. $t$):* Starts at $(0, 0)$, concave down, increasing monotonically toward horizontal asymptote $v_T = 19.6 "m/s"$. \
      *Graph 2 ($a$ vs. $t$):* Starts at $(0, 9.8 "m/s"^2)$, concave up, decaying exponentially ($a(t) = g e^(-b t)$) toward asymptote $a = 0$.
    ],
    [
      *+1 pt* $v(0)=0$ & concave down \
      *+1 pt* Asymptote at $19.6 "m/s"$ \
      *+1 pt* $a(0)=9.8 "m/s"^2$ & concave up \
      *+1 pt* Asymptote at $a = 0$ \
      *(4 pts total)*
    ],
  )
)

// ==========================================
// PAGE 15: FRQ 3 SOLUTION & RUBRIC
// ==========================================
#rubric-page(
  "3",
  (
    [*(a)*],
    [
      Apply chain rule $(d v)/(d t) = (d v)/(d x) (d x)/(d t) = v (d v)/(d x) = a(x)$. Separate variables with $x_0 = 0, v_0 = 6.0 "m/s"$: \
      $integral_(6.0)^v v' \, d v' = integral_0^x (4.0 - 3.0 x'^2) \, d x'$ \
      $1/2 (v^2 - 36.0) = [ 4.0 x' - x'^3 ]_0^x = 4.0 x - x^3$ \
      $boxed(v^2(x) = 36.0 + 8.0 x - 2.0 x^3 "m"^2/"s"^2)$
    ],
    [
      *+1 pt* Writing $a = v (d v)/(d x)$ \
      *+1 pt* Separating $v \, d v$ and $d x$ \
      *+1 pt* Matching spatial limits \
      *+2 pts* Final $v^2(x)$ equation \
      *(5 pts total)*
    ],

    [*(b)*],
    [
      Maximum speed occurs where $(d(v^2))/(d x) = 2 a(x) = 0$: \
      $4.0 - 3.0 x_"max"^2 = 0 arrow.r.double x_"max" = sqrt(4.0 / 3.0) approx boxed(1.15 "m")$ (for $x > 0$). \
      Substitute $x_"max" = 1.155 "m"$ into $v^2(x)$: \
      $v_"max"^2 = 36.0 + 8.0(1.155) - 2.0(1.155)^3 = 36.0 + 9.24 - 3.08 = 42.16$ \
      $v_"max" = sqrt(42.16) approx boxed(6.49 "m/s")$
    ],
    [
      *+1 pt* Setting $a(x) = 0$ \
      *+1 pt* Finding $x_"max" approx 1.15 "m"$ \
      *+2 pts* Final $v_"max"$ + units \
      *(4 pts total)*
    ],

    [*(c)*],
    [
      At the turning point, $v(x_"turn") = 0$, so $v^2(x_"turn") = 0$: \
      $36.0 + 8.0 x_"turn" - 2.0 x_"turn"^3 = 0 arrow.r.double x_"turn"^3 - 4.0 x_"turn" - 18.0 = 0$ \
      Solving the cubic numerically for $x > 0$ yields $boxed(x_"turn" approx 3.12 "m")$.
    ],
    [
      *+1 pt* Setting $v^2(x) = 0$ \
      *+1 pt* Correct cubic setup \
      *+1 pt* Positive root $x_"turn"$ + units \
      *(3 pts total)*
    ],

    [*(d)*],
    [
      At $x_"turn" approx 3.12 "m"$, $v = 0$, while acceleration is strictly negative: \
      $a(3.12) = 4.0 - 3.0(3.12)^2 = -25.2 "m/s"^2 < 0$. \
      Because acceleration points in the $-x$ direction while velocity is momentarily zero, the capsule reverses direction and accelerates back toward $x = 0$.
    ],
    [
      *+1 pt* Evaluating $a(x_"turn") < 0$ \
      *+1 pt* Linking negative $a$ to $-x$ velocity reversal \
      *+1 pt* Clear physical reasoning \
      *(3 pts total)*
    ],
  )
)

// ==========================================
// PAGE 17: FRQ 4 SOLUTION & RUBRIC
// ==========================================
#rubric-page(
  "4",
  (
    [*(a)*],
    [
      Direction reverses where $v(t) = 0$ and changes sign: \
      - Interval I ($0 <= t <= 4.0 "s"$): $v(t) = 3.0 t - 6.0 = 0 arrow.r.double boxed(t_1 = 2.0 "s")$ ($-$ to $+$). \
      - Interval III ($7.0 <= t <= 10.0 "s"$): $v(t) = 6.0 - 4.0(t - 7.0) = 0 arrow.r.double boxed(t_2 = 8.5 "s")$ ($+$ to $-$). \
      Taking slopes $a(t) = (d v)/(d t)$ per interval: \
      $boxed(a_"I" = +3.0 "m/s"^2, quad a_"II" = 0 "m/s"^2, quad a_"III" = -4.0 "m/s"^2)$
    ],
    [
      *+1 pt* Finding $t_1 = 2.0 "s"$ \
      *+1 pt* Finding $t_2 = 8.5 "s"$ \
      *+2 pts* All 3 slopes + units \
      *(4 pts total)*
    ],

    [*(b)*],
    [
      Integrate signed area $Delta x = integral_0^(10) v(t) \, d t$ across all three intervals: \
      - $Delta x_"I" = 1/2 (2.0)(-6.0) + 1/2 (2.0)(+6.0) = -6.0 + 6.0 = 0 "m"$ \
      - $Delta x_"II" = (3.0)(+6.0) = +18.0 "m"$ \
      - $Delta x_"III" = 1/2 (1.5)(+6.0) + 1/2 (1.5)(-6.0) = +4.5 - 4.5 = 0 "m"$ \
      Net displacement: $boxed(Delta x = +18.0 "m")$. Final position: $x(10) = -5.0 + 18.0 = boxed(+13.0 "m")$.
    ],
    [
      *+2 pts* Signed areas per interval \
      *+1 pt* Net $Delta x = +18.0 "m"$ \
      *+1 pt* Adding $x_0 = -5.0 "m"$ for $x(10)$ \
      *(4 pts total)*
    ],

    [*(c)*],
    [
      Sum absolute areas $|integral v(t) \, d t|$ across all five sub-intervals: \
      $D = |-6.0| + |+6.0| + |+18.0| + |+4.5| + |-4.5| = boxed(39.0 "m")$
    ],
    [
      *+2 pts* Splitting at $t=2.0$ and $8.5 "s"$ \
      *+2 pts* Positive magnitudes \
      *+1 pt* Total $D = 39.0 "m"$ \
      *(5 pts total)*
    ],

    [*(d)*],
    [

      *+1 pt* Maximum speed $6.0 "m/s"$ \
      *+1 pt* Identifying all instants/intervals \
      *(2 pts total)*
    ],
  )
)
// ==========================================
// PAGE 18: SECTION 5 — TOP 7 KINEMATICS SCORE KILLERS (TRAPS #1–#4)
// ==========================================

// 1. TOP SECTION BANNER
#block(
  width: 100%,
  fill: rgb("#1E293B"),
  inset: (x: 12pt, y: 10pt),
  radius: 3pt,
  text(font: "Inter", weight: "bold", size: 11.5pt, fill: white, tracking: 1pt)[
    SECTION 5  |  TOP 7 SCORE KILLERS & STUDENT FAQ
  ]
)

#v(0.65em)

#text(font: "Inter", weight: "bold", size: 12pt, fill: rgb("#0F172A"))[
  TOP 7 KINEMATICS SCORE KILLERS (TRAPS #1–#4)
]
#v(0.25em)
#text(size: 9.5pt, fill: rgb("#334155"))[
  Review these fatal AP Physics C execution errors the night before your exam to protect every derivation point.
]

#v(0.6em)

// 2. 3-COLUMN, 5-ROW DIAGNOSTIC TABLE (Proportional to 1.6" | 2.7" | 2.9")
#table(
  columns: (1.5in, 1fr, 1.08fr),
  stroke: 0.5pt + rgb("#CBD5E1"),
  inset: (x: 8pt, y: 10pt),
  align: (left + horizon, left + horizon, left + horizon),
  fill: (x, y) => {
    if y == 0 {
      if x == 1 { rgb("#991B1B") } else { rgb("#0F172A") }
    } else if x == 1 {
      rgb("#FEF2F2")
    } else if calc.odd(y) {
      white
    } else {
      rgb("#F8FAFC")
    }
  },

  table.header(
    text(font: "Inter", weight: "bold", size: 9pt, fill: white)[The Trap],
    text(font: "Inter", weight: "bold", size: 9pt, fill: white)[Common Mistake (0 Points)],
    text(font: "Inter", weight: "bold", size: 9pt, fill: white)[AP Full-Credit Fix],
  ),

  // Trap #1
  [
    #text(font: "Inter", weight: "bold", size: 8.5pt, fill: rgb("#DC2626"))[TRAP #1] \
    *Illegal Shortcut Use*
  ],
  [
    Plugging variable acceleration $a(t)$ or $a(v)$ directly into $x = x_0 + v_0 t + 1/2 a t^2$.
  ],
  [
    Always verify $a$ is *strictly constant* before touching algebraic equations. If $a$ varies, return to $(d v)/(d t) = a$ or $v (d v)/(d x) = a$.
  ],

  // Trap #2
  [
    #text(font: "Inter", weight: "bold", size: 8.5pt, fill: rgb("#DC2626"))[TRAP #2] \
    *Dropped $+C$ or Limits*
  ],
  [
    Integrating $integral a(t) \, d t$ without lower limits and forgetting initial velocity $v_0$ or position $x_0$.
  ],
  [
    Always use definite integrals with matching boundary limits from $v_0$ to $v(t)$ and $0$ to $t$ (or solve for $+C$ immediately).
  ],

  // Trap #3
  [
    #text(font: "Inter", weight: "bold", size: 8.5pt, fill: rgb("#DC2626"))[TRAP #3] \
    *Distance vs. Displacement*
  ],
  [
    Integrating $v(t)$ straight across a turning point when asked for total distance traveled.
  ],
  [
    Solve $v(t) = 0$ first, split the integral at every sign-change root, and sum the absolute values $|Delta x_i|$.
  ],

  // Trap #4
  [
    #text(font: "Inter", weight: "bold", size: 8.5pt, fill: rgb("#DC2626"))[TRAP #4] \
    *Sign Flip Errors*
  ],
  [
    Defining upward as positive ($+y$) but plugging $g = +9.8 "m/s"^2$ into vertical motion equations.
  ],
  [
    Draw your positive coordinate axis arrow at the top of the page and enforce explicit $+$ or $-$ signs on every vector.
  ],
)

// 3. HARD PAGE BREAK (Starts Page 19 cleanly)
#pagebreak()
// ==========================================
// PAGE 19: SECTION 5 — SCORE KILLERS (TRAPS #5–#7) & PRE-EXAM CHECKLIST
// ==========================================

// 1. TOP HALF (~50% of Page) — TRAPS #5–#7
#text(font: "Inter", weight: "bold", size: 12pt, fill: rgb("#0F172A"))[
  TOP 7 KINEMATICS SCORE KILLERS (TRAPS #5–#7)
]
#v(0.4em)

#table(
  columns: (1.5in, 1fr, 1.08fr),
  stroke: 0.5pt + rgb("#CBD5E1"),
  inset: (x: 8pt, y: 9pt),
  align: (left + horizon, left + horizon, left + horizon),
  fill: (x, y) => {
    if y == 0 {
      if x == 1 { rgb("#991B1B") } else { rgb("#0F172A") }
    } else if x == 1 {
      rgb("#FEF2F2")
    } else if calc.odd(y) {
      white
    } else {
      rgb("#F8FAFC")
    }
  },

  table.header(
    text(font: "Inter", weight: "bold", size: 9pt, fill: white)[The Trap],
    text(font: "Inter", weight: "bold", size: 9pt, fill: white)[Common Mistake (0 Points)],
    text(font: "Inter", weight: "bold", size: 9pt, fill: white)[AP Full-Credit Fix],
  ),

  // Trap #5
  [
    #text(font: "Inter", weight: "bold", size: 8.5pt, fill: rgb("#DC2626"))[TRAP #5] \
    *Chain Rule Omission on $a(x)$*
  ],
  [
    Integrating $a(x)$ with respect to $x$ to get $v(x)$ directly without multiplying by $v$.
  ],
  [
    Always substitute $a = v (d v)/(d x)$ so the left side separates to $v \, d v$ and integrates to $1/2 (v^2 - v_0^2)$.
  ],

  // Trap #6
  [
    #text(font: "Inter", weight: "bold", size: 8.5pt, fill: rgb("#DC2626"))[TRAP #6] \
    *Missing or Non-SI Units*
  ],
  [
    Leaving final numerical answers unitless or plugging centimeters, minutes, or grams into equations.
  ],
  [
    Convert all inputs to $"m"$, $"s"$, and $"kg"$ in Step 1 and attach explicit SI units to every boxed final answer.
  ],

  // Trap #7
  [
    #text(font: "Inter", weight: "bold", size: 8.5pt, fill: rgb("#DC2626"))[TRAP #7] \
    *Undefined Variables*
  ],
  [
    Introducing custom constants like $k$ or $b$ in a symbolic derivation that were not listed in the prompt's given list.
  ],
  [
    Express final symbolic derivations strictly using the exact algebraic symbols authorized in the question stem.
  ],
)

// Push Pre-Exam Checklist cleanly into the bottom half of Page 19
#v(1fr)

// 2. BOTTOM HALF (~50% of Page) — PRINTABLE PRE-EXAM DIAGNOSTIC CHECKLIST
#block(
  width: 100%,
  fill: rgb("#F4F6F9"),
  stroke: (left: 4pt + rgb("#0F172A"), rest: 0.75pt + rgb("#CBD5E1")),
  inset: 14pt,
  radius: (right: 4pt),
  [
    #text(font: "Inter", weight: "bold", size: 10.5pt, fill: rgb("#0F172A"), tracking: 0.5pt)[
      PRINTABLE PRE-EXAM DIAGNOSTIC CHECKLIST
    ]
    #v(3pt)
    #text(size: 9.2pt, fill: rgb("#475569"))[
      Verify all six mastery benchmarks below before sitting for your unit test or the AP Physics C: Mechanics Exam:
    ]
    #v(7pt)

    #set list(marker: text(font: "Inter", weight: "bold", size: 11pt, fill: rgb("#D97706"))[☐], spacing: 0.65em)
    - I can derive all three constant-acceleration equations from $a = (d v)/(d t)$ and $a = v (d v)/(d x)$ in under 3 minutes.
    - I can separate variables, apply exact lower limits, and solve for both $v(t)$ and terminal velocity $v_T$ in a linear drag problem.
    - I can recognize when acceleration depends on position $a(x)$ and execute the $v (d v)/(d x)$ chain-rule substitution without hesitation.
    - I automatically check for velocity sign changes ($v(t) = 0$) and split definite integrals whenever a prompt asks for *total distance* rather than displacement.
    - I define an explicit coordinate origin and positive axis arrow before assigning signs to $g = 9.8 "m/s"^2$ or initial velocity vectors.
    - I audit every symbolic derivation to ensure my final boxed expression uses *only* the variables explicitly given in the problem statement.
  ]
)

// 3. HARD PAGE BREAK (Starts Page 20 — Final Page cleanly)
#pagebreak()
// ==========================================
// PAGE 20: SECTION 5 — STUDENT FAQ & NEXT STEPS (FINAL PAGE)
// ==========================================

// 1. PAGE HEADER
#text(font: "Inter", weight: "bold", size: 14pt, fill: rgb("#0F172A"))[
  FREQUENTLY ASKED QUESTIONS & NEXT STEPS
]
#v(0.2em)
#line(length: 100%, stroke: 1pt + rgb("#D97706"))
#v(0.7em)

// 2. TOP SECTION (~65% of Page) — 4-QUESTION STUDENT FAQ
#let faq-item(q, a) = {
  text(font: "Inter", weight: "bold", size: 12pt, fill: rgb("#0F172A"))[#q]
  v(0.25em)
  text(size: 11pt, fill: rgb("#334155"))[#a]
  v(0.95em)
}

#faq-item(
  "Q1: Should I use definite integrals or +C on the AP Physics C exam?",
  [Both methods earn full credit on College Board rubrics if executed properly. However, definite integrals with matching lower limits ($v_0$ at $t = 0$) are faster under exam pressure and prevent you from accidentally dropping initial conditions.]
)

#faq-item(
  "Q2: How do I handle multi-stage problems where acceleration changes halfway through?",
  [Split the motion into two separate time intervals at the exact instant acceleration changes. Treat the final position and velocity of Stage 1 as the new initial values ($x_0$ and $v_0$) for Stage 2, resetting your clock to $t = 0$ if that simplifies the algebra.]
)

#faq-item(
  [Q3: When am I allowed to leave $g$ as a symbol versus plugging in $9.8 "m/s"^2$?],
  [Whenever a prompt instructs you to "derive an expression in terms of..." given variables, keep $g$ strictly symbolic from start to finish. Only substitute $g = 9.8 "m/s"^2$ at the final step when the problem provides numerical values with units.]
)

#faq-item(
  "Q4: How many significant figures does the AP exam require?",
  [AP Physics C scoring rubrics generally accept anywhere from 2 to 4 significant figures on final numerical calculations. Rounding your final boxed answers to 3 significant figures is always safe, provided you keep extra guard digits during intermediate steps.]
)

// Push Author & Next-Unit Footer Card cleanly to the bottom of Page 20
#v(1fr)

// 3. BOTTOM SECTION (~35% of Page) — AUTHOR & NEXT-UNIT FOOTER CARD
#block(
  width: 100%,
  fill: rgb("#1E293B"),
  stroke: (top: 4pt + rgb("#D97706")),
  inset: 16pt,
  radius: 4pt,
  [
    #text(font: "Inter", weight: "bold", size: 8.5pt, fill: rgb("#D97706"), tracking: 1.2pt)[
      UP NEXT IN THE MASTERY VAULT SERIES
    ]
    #v(0.3em)
    #text(font: "Inter", weight: "bold", size: 13pt, fill: white)[
      Unit 2: Newton's Laws & Variable Forces
    ]
    #v(0.35em)
    #text(size: 9.8pt, fill: rgb("#E2E8F0"))[
      Ready to extend first-principles calculus into free-body systems, coupled pulleys, resistive terminal velocity, and non-inertial frames? Continue your exam prep with step-by-step video walkthroughs of these exact FRQs and upcoming Vault releases at:
    ]
    #v(0.45em)
    #text(font: "Inter", weight: "bold", size: 10.5pt, fill: rgb("#FBBF24"))[
      #link("https://sciencebehindthings.com")[sciencebehindthings.com]
    ]
    #v(0.6em)
    #line(length: 100%, stroke: 0.5pt + rgb("#475569"))
    #v(0.45em)
    #grid(
      columns: (1fr, auto),
      text(font: "Inter", size: 8.5pt, fill: rgb("#94A3B8"))[
        © 2026 Promise Media and Education, LLC. All Rights Reserved.
      ],
      text(font: "Inter", size: 8.5pt, fill: rgb("#94A3B8"))[
        Student Support: `support@sciencebehindthings.com`
      ]
    )
  ]
)