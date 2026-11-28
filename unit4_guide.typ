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
      h(1fr)
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

#let frq-box(title, problem, solution) = {
  block(
    width: 100%,
    stroke: 1pt + luma(200),
    radius: 4pt,
    clip: true,
    breakable: false,
    [
      #block(
        width: 100%,
        fill: brand-navy,
        inset: (x: 10pt, y: 6pt),
        text(fill: white, weight: "bold", size: 9.5pt)[AP FRQ PRACTICE • #title]
      )
      #block(
        width: 100%,
        fill: white,
        inset: 10pt,
        [
          *Problem:* #problem
          #line(length: 100%, stroke: (paint: luma(210), dash: "dashed"))
          #v(2pt)
          #text(fill: brand-navy, weight: "bold")[Step-by-Step Solution:] \
          #v(2pt)
          #solution
        ]
      )
    ]
  )
}

#show: ap-guide.with(
  unit-num: "4",
  unit-title: "Systems of Particles & Linear Momentum"
)

#block(
  width: 100%,
  fill: rgb("#F8F9FA"),
  stroke: (top: 2pt + brand-gold, bottom: 1pt + luma(210)),
  inset: 10pt,
  [
    *Unit Overview:* Until now, we treated every object as a single point particle. In Unit 4, we expand Newton's Laws to multi-body systems and continuous rigid objects. You will use integration to locate the center of mass of non-uniform shapes, apply the Impulse-Momentum Theorem to time-varying forces, and analyze 1D and 2D collisions where kinetic energy may or may not be conserved.
    
    #v(4pt)
    *Core Calculus Skills:* Integrating linear/surface mass densities ($integral x dif m$), evaluating force-time integrals ($integral F(t) dif t$), and differentiating momentum ($#dv($vecb(p)$, $t$)$).
  ]
)
#v(8pt)

= 1. Center of Mass (Discrete & Continuous Systems)

The **center of mass (COM)** is the mass-weighted average position of a system. External forces act on the system as if all mass were concentrated at this single point.

#key-law("Center of Mass Position")[
  *Discrete Particles:*
  $ vecb(r)_("cm") = 1 / M sum_(i=1)^n m_i vecb(r)_i $

  *Continuous Mass Distribution (Rods, Plates, Solids):*
  $ x_("cm") = 1 / M integral x dif m, quad y_("cm") = 1 / M integral y dif m, quad z_("cm") = 1 / M integral z dif m $
]

== Setting Up the Mass Element ($dif m$)
To evaluate the integral for a continuous object, rewrite $dif m$ in terms of spatial coordinates using density:
- **1D Linear Density ($lambda$):** $dif m = lambda(x) dif x$ (units: $unit("kg/m")$)
- **2D Surface Density ($sigma$):** $dif m = sigma dif A$ (units: $unit("kg/m"^2)$)
- **3D Volume Density ($rho$):** $dif m = rho dif V$ (units: $unit("kg/m"^3)$)

#exam-trap[
  If a rod has **non-uniform density** (e.g., $lambda(x) = alpha x$), you cannot assume $M = lambda L$. You must integrate to find the total mass first: $M = integral_0^L lambda(x) dif x$.
]

= 2. Impulse and Linear Momentum

Linear momentum is defined as $vecb(p) = m vecb(v)$. Newton's Second Law in its most general calculus form relates net external force to the time rate of change of momentum:

$ sum vecb(F)_("ext") = #dv($vecb(p)$, $t$) $

#key-law("Impulse-Momentum Theorem")[
  Impulse ($vecb(J)$) is the integral of net force over a time interval $Delta t$ and equals the change in linear momentum:
  $ vecb(J) = integral_(t_1)^(t_2) sum vecb(F)_("ext") dif t = Delta vecb(p) = vecb(p)_f - vecb(p)_i $
  *Graphical Meaning:* The area under a Force vs. Time ($F$-$t$) graph equals the impulse delivered to the object.
]

#exam-trap[
  Impulse and momentum are **vectors**. If a $0.50 unit("kg")$ ball hits a wall at $+10 unit("m/s")$ and rebounds at $-8 unit("m/s")$, the change in momentum is $Delta p = (0.50)(-8 - 10) = -9.0 unit("N" dot "s")$, not $-1.0 unit("N" dot "s")$.
]

= 3. Conservation of Linear Momentum & Collisions

When the net external force on a system is zero ($sum vecb(F)_("ext") = 0$), total linear momentum is conserved:
$ sum vecb(p)_i = sum vecb(p)_f $

== Collision Types
- **Elastic Collision:** Both total momentum and total kinetic energy ($K = 1/2 m v^2$) are conserved.
- **Inelastic Collision:** Momentum is conserved, but kinetic energy is lost to heat, sound, or deformation ($K_f < K_i$).
- **Perfectly Inelastic Collision:** Colliding objects stick together and move with a single common final velocity $vecb(v)_f$.

= 4. AP-Style Free Response Practice

#frq-box(
  "Non-Uniform Rod Center of Mass",
  [
    A non-uniform rod of length $L = 2.0 unit("m")$ lies along the $x$-axis from $x = 0$ to $x = L$. Its linear mass density varies as $lambda(x) = 3.0 x$ (in $unit("kg/m")$). Find the total mass $M$ and the center of mass $x_("cm")$.
  ],
  [
    1. *Find Total Mass ($M$):*
       $ M = integral_0^2.0 3.0 x dif x = [ 1.5 x^2 ]_0^2.0 = 6.0 unit("kg") $
    2. *Find Center of Mass ($x_("cm")$):*
       $ x_("cm") = 1 / 6.0 integral_0^2.0 x (3.0 x dif x) = 1 / 6.0 [ x^3 ]_0^2.0 = 8.0 / 6.0 = 1.33 unit("m") $
  ]
)

#v(8pt)

#frq-box(
  "The Ballistic Pendulum (Two-Stage Conservation)",
  [
    A $0.020 unit("kg")$ bullet traveling horizontally at $400 unit("m/s")$ strikes and embeds itself into a $1.98 unit("kg")$ stationary wooden block suspended by light strings of length $L = 1.5 unit("m")$. Find:
    (a) the speed of the block-bullet system immediately after impact, and
    (b) the maximum vertical height $h$ the block rises.
  ],
  [
    1. *Stage 1 — Perfectly Inelastic Collision (Momentum Conserved, Energy Lost):*
       $ m v_0 = (m + M) v_f arrow.r.double (0.020)(400) = (0.020 + 1.98) v_f $
       $ 8.0 = 2.00 v_f arrow.r.double v_f = 4.0 unit("m/s") $
    2. *Stage 2 — Upward Swing (Mechanical Energy Conserved):*
       $ 1 / 2 (m + M) v_f^2 = (m + M) g h arrow.r.double h = v_f^2 / (2 g) $
       $ h = (4.0)^2 / (2 times 9.8) = 16.0 / 19.6 = 0.82 unit("m") $
  ]
)

*Problem:* A non-uniform rod of length $L = 2.0 unit("m")$ lies along the $x$-axis from $x = 0$ to $x = L$. Its linear mass density varies as $lambda(x) = 3.0 x$ (in $unit("kg/m")$). Find the total mass $M$ and the center of mass $x_("cm")$.

*Solution:*
1. **Find Total Mass ($M$):**
   $ M = integral_0^2.0 3.0 x dif x = [ 1.5 x^2 ]_0^2.0 = 6.0 unit("kg") $
2. **Find Center of Mass ($x_("cm")$):**
   $ x_("cm") = 1 / 6.0 integral_0^2.0 x (3.0 x dif x) = 1 / 6.0 [ x^3 ]_0^2.0 = 8.0 / 6.0 = 1.33 unit("m") $

#v(8pt)

#block(
  width: 100%,
  fill: box-bg,
  stroke: (top: 2pt + brand-navy),
  inset: 10pt,
  radius: (bottom: 4pt),
  [
    #text(fill: brand-navy, weight: "bold")[Up Next — Unit 5: Torque & Rotational Dynamics] \
    #v(2pt)
    Now that you can track the linear motion of a system's center of mass, Unit 5 explores what happens when forces cause extended rigid bodies to spin. Get ready to integrate rotational inertia ($I = integral r^2 dif m$), calculate torque ($vecb(tau) = vecb(r) times vecb(F)$), and connect linear and angular kinematics. \
    #v(3pt)
    #text(size: 9pt, fill: luma(90))[More calculus-based guides, video walkthroughs, and FRQ drills available at *ScienceBehindThings.com*.]
  ]
)
