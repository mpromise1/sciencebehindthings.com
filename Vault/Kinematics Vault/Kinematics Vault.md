Exponentiate both sides and isolate \(v(t)\):

  

1 - \frac{b}{mg}v = e^{-(b/m)t} \implies v(t) = \frac{mg}{b}\left(1 - e^{-(b/m)t}\right)  

- **Rubric:** **+1 pt** for correct separation of variables; **+2 pts** for correct logarithmic integration with limits; **+2 pts** for exponential algebraic inversion; **+1 pt** for final symbolic form.

  

**Part (d): Position Function \(y(t)\) — [4 Points]**

Integrate \(v(t) = \frac{dy}{dt}\) from \(y_0 = 0\) at \(t = 0\):


  

latex

\begin{aligned}

y(t) &= \int_{0}^{t} \frac{mg}{b}\left(1 - e^{-(b/m)t'}\right)\,dt' \\

y(t) &= \frac{mg}{b} \left[ t' + \frac{m}{b}e^{-(b/m)t'} \right]_{0}^{t} \\

y(t) &= \frac{mg}{b}t + \frac{m^2 g}{b^2}\left(e^{-(b/m)t} - 1\right)

\end{aligned}

Use code with caution.

  

- **Rubric:** **+1 pt** for setting up \(\int_{0}^{t} v(t')\,dt'\); **+2 pts** for evaluating both terms including the lower limit at \(t' = 0\); **+1 pt** for final simplified expression.

  

  

  

**FRQ 3: 2D Projectile Motion Off a Cliff (15 Points)**

  

**Problem Statement**

A research payload is launched from the edge of a vertical cliff of height \(H = 45.0\text{ m}\) above a flat valley floor. The payload is launched with an initial speed \(v_0 = 20.0\text{ m/s}\) at an angle \(\theta = 30.0^\circ\) above the horizontal. Use \(g = 9.8\text{ m/s}^2\) and neglect air resistance. Define the origin \((0, 0)\) at the valley floor directly below the launch point, with \(+x\) horizontal and \(+y\) upward.

- **(a)** Calculate the maximum height \(y_{\max }\) above the valley floor reached by the payload.
- **(b)** Calculate the total time of flight \(t_{f}\) from launch until the payload impacts the valley floor.
- **(c)** Calculate the horizontal range \(R\) measured from the base of the cliff to the impact point.
- **(d)** Calculate the impact speed \(v_{f}\) of the payload just before striking the valley floor.

  

**Step-by-Step Solution & Grading Rubric**

  

**Part (a): Maximum Height \(y_{\max }\) — [4 Points]**

Resolve the initial velocity into orthogonal components:

  

latex

\begin{aligned}

v_{0x} &= v_0 \cos 30.0^\circ = (20.0)(0.8660) = 17.32\text{ m/s} \\

v_{0y} &= v_0 \sin 30.0^\circ = (20.0)(0.5000) = 10.00\text{ m/s}

\end{aligned}

Use code with caution.

  

At the apex, \(v_y = 0\text{ m/s}\). Use the time-independent vertical constant-acceleration equation starting from \(y_0 = 45.0\text{ m}\):

  

latex

\begin{aligned}

v_y^2 &= v_{0y}^2 - 2g(y_{\max} - y_0) \\

0 &= (10.00)^2 - 2(9.8)(y_{\max} - 45.0) \\

y_{\max} &= 45.0 + \frac{100.0}{19.6} = 45.0 + 5.10 = 50.1\text{ m}

\end{aligned}

Use code with caution.

  

- **Rubric:** **+1 pt** for \(v_{0y} = 10.0\text{ m/s}\); **+1 pt** for setting \(v_y = 0\); **+1 pt** for adding initial cliff height \(45.0\text{ m}\); **+1 pt** for \(50.1\text{ m}\).

  

**Part (b): Total Time of Flight \(t_{f}\) — [4 Points]**

At impact on the valley floor, \(y(t_f) = 0\text{ m}\):

  

latex

\begin{aligned}

y(t_f) &= y_0 + v_{0y}t_f - \frac{1}{2}g t_f^2 \\

0 &= 45.0 + 10.0t_f - 4.9t_f^2

\end{aligned}

Use code with caution.

  

Rearrange into standard quadratic form \(4.9t_f^2 - 10.0t_f - 45.0 = 0\) and apply the quadratic formula:

  

latex

t_f = \frac{10.0 \pm \sqrt{(-10.0)^2 - 4(4.9)(-45.0)}}{2(4.9)} = \frac{10.0 \pm \sqrt{100.0 + 882.0}}{9.8} = \frac{10.0 + 31.34}{9.8} = 4.22\text{ s}

Use code with caution.

  

*(Discard the negative root \(t = -2.18\text{ s}\).) *

- **Rubric:** **+1 pt** for setting \(y(t_f) = 0\); **+1 pt** for correct quadratic setup; **+2 pts** for positive root \(t_f = 4.22\text{ s}\).

  

**Part (c): Horizontal Range \(R\) — [3 Points]**

Because \(a_x = 0\text{ m/s}^2\), horizontal velocity stays constant throughout the flight:

  

latex

R = v_{0x} t_f = (17.32\text{ m/s})(4.22\text{ s}) = 73.1\text{ m}

Use code with caution.

  

*(Imperial Intuition Note: \(73.1\text{ m}\) equals approximately \(240\text{ ft}\).) *

- **Rubric:** **+1 pt** for using \(a_x = 0\); **+1 pt** for multiplying \(v_{0x}\) by \(t_{f}\); **+1 pt** for \(73.1\text{ m}\).

  

**Part (d): Impact Speed \(v_{f}\) — [4 Points]**

Compute the vertical velocity component at \(t_f = 4.22\text{ s}\) and combine orthogonally with \(v_{x}\):

  

latex

\begin{aligned}

v_{fy} &= v_{0y} - g t_f = 10.00 - (9.8)(4.22) = -31.36\text{ m/s} \\

v_f &= \sqrt{v_{fx}^2 + v_{fy}^2} = \sqrt{(17.32)^2 + (-31.36)^2} = \sqrt{300.0 + 983.4} = 35.8\text{ m/s}

\end{aligned}

Use code with caution.

  

- **Rubric:** **+1 pt** for \(v_{fy} = -31.36\text{ m/s}\); **+1 pt** for Pythagorean magnitude formula; **+2 pts** for \(35.8\text{ m/s}\).

  

  

  

**FRQ 4: Position-Dependent Acceleration (15 Points)**

  

**Problem Statement**

A magnetic test carriage moves along a frictionless horizontal track. At position \(x = 0\text{ m}\), its initial velocity is \(v_0 = 3.0\text{ m/s}\) in the \(+x\) direction. Its acceleration varies strictly as a function of position according to:

  

latex

a(x) = 8.0 - 2.0x

Use code with caution.

  

where \(a\) is in \(\text{m/s}^{2}\) and \(x\) is in meters.

- **(a)** Use the chain rule to derive an expression for the carriage's speed \(v(x)\) as a function of position \(x\).
- **(b)** Determine the position \(x\) where the carriage achieves its maximum speed, and calculate that maximum speed.
- **(c)** Calculate the positive turning point \(x_{\text{turn}} > 0\) where the carriage momentarily comes to rest.
- **(d)** In two clear sentences, explain physically why \(\int_{x_0}^{x} a(x')\,dx'\) yields \(\frac{1}{2}\Delta(v^2)\) rather than \(\Delta v\).

  

**Step-by-Step Solution & Grading Rubric**

  

**Part (a): Speed Function \(v(x)\) — [5 Points]**

Rewrite acceleration using the chain rule \(a = \frac{dv}{dt} = \frac{dv}{dx}\frac{dx}{dt} = v\frac{dv}{dx}\), separate variables, and integrate from \(v_0 = 3.0\text{ m/s}\) at \(x_0 = 0\text{ m}\):

  

latex

\begin{aligned}

\int_{3.0}^{v} v'\,dv' &= \int_{0}^{x} (8.0 - 2.0x')\,dx' \\

\frac{1}{2}v^2 - \frac{1}{2}(3.0)^2 &= 8.0x - x^2 \\

v^2 &= 9.0 + 16.0x - 2.0x^2 \\

v(x) &= \sqrt{9.0 + 16.0x - 2.0x^2}

\end{aligned}

Use code with caution.

  

- **Rubric:** **+1 pt** for substituting \(a = v\frac{dv}{dx}\); **+1 pt** for separating variables; **+2 pts** for integrating both sides with \(v_0 = 3.0\text{ m/s}\); **+1 pt** for final \(v(x)\) expression.

  

**Part (b): Maximum Speed & Position — [4 Points]**

Speed reaches an extremum where \(\frac{dv}{dx} = 0\), which occurs where \(a(x) = 0\text{ m/s}^2\):

  

latex

a(x) = 8.0 - 2.0x = 0 \implies x = 4.0\text{ m}

Use code with caution.

  

Substitute \(x = 4.0\text{ m}\) into \(v(x)\):

  

latex

v_{\max} = \sqrt{9.0 + 16.0(4.0) - 2.0(4.0)^2} = \sqrt{9.0 + 64.0 - 32.0} = \sqrt{41.0} = 6.40\text{ m/s}

Use code with caution.

  

- **Rubric:** **+1 pt** for setting \(a(x) = 0\); **+1 pt** for \(x = 4.0\text{ m}\); **+2 pts** for \(v_{\max} = 6.40\text{ m/s}\).

  

**Part (c): Positive Turning Point \(x_{\text{turn}}\) — [4 Points]**

The carriage comes to rest when \(v(x) = 0\text{ m/s}\):

  

latex

9.0 + 16.0x - 2.0x^2 = 0 \implies 2.0x^2 - 16.0x - 9.0 = 0

Use code with caution.

  

Apply the quadratic formula and select the positive root:

  

latex

x_{\text{turn}} = \frac{16.0 \pm \sqrt{(-16.0)^2 - 4(2.0)(-9.0)}}{2(2.0)} = \frac{16.0 \pm \sqrt{256.0 + 72.0}}{4.0} = \frac{16.0 + 18.11}{4.0} = 8.53\text{ m}

Use code with caution.

  

_(Note: Discard the negative root \(x = -0.53\text{ m}\) since the problem specifies \(x_{\text{turn}} > 0\).)_

- **Rubric:** **+1 pt** for setting \(v(x) = 0\); **+1 pt** for quadratic setup; **+2 pts** for \(x_{\text{turn}} = 8.53\text{ m}\).

  

**Part (d): Physical Explanation — [2 Points]**

Integrating acceleration with respect to **position** rather than **time** computes the work done per unit mass along the displacement path. By the Work-Energy Theorem, net work per unit mass equals the change in specific kinetic energy, \(\frac{\Delta K}{m} = \frac{1}{2}v^2 - \frac{1}{2}v_0^2\), rather than a change in velocity.

- **Rubric:** **+1 pt** for connecting spatial integration \(\int a\,dx\) to work per unit mass; **+1 pt** for linking \(\frac{1}{2}\Delta(v^2)\) to change in kinetic energy.

  

  

  

**Quick Apple Pages Formatting Tip**

Insert a **Page Break** (Insert > Page Break) right after FRQ 4 Part (d) so **Section 5 (Top 7 Score Killers & Student FAQ)** starts cleanly at the top of Page 11.

Here is the exact, copy-pasteable wording for **Section 5: Top 7 Score Killers & Student FAQ (Pages 11–12)**, formatted with single-block LaTeX equations ready for Apple Pages (Option + Command + E).

  

  

  

**SECTION 5: TOP 7 SCORE KILLERS & STUDENT FAQ**

  

**1. Top 7 AP Physics C Kinematics Score Killers**

Print this page and review every checkpoint before turning in a Free-Response Question or taking a practice exam.

- **1. Using "Big Four" Equations on Variable Acceleration:** Applying \(\Delta x = v_0 t + \frac{1}{2}at^2\) when acceleration contains a \(t\), \(v\), or \(x\) variable earns zero physics points on the AP rubric. Always classify acceleration first.
- **2. Confusing Total Distance with Net Displacement:** Net displacement is \(\Delta x = \int_{t_1}^{t_2} v(t)\,dt\). Total distance traveled requires finding any turning points where \(v(t) = 0\) inside the interval, splitting the integral, and taking absolute values:

  

latex

\text{Total Distance} = \int_{t_1}^{t_2} |v(t)|\,dt

Use code with caution.

  

- **3. Dropping Initial Boundary Conditions (\(v_{0}\) or \(x_{0}\)):** Indefinite integration leaves an arbitrary \(+C\) that students frequently forget to solve for. Always use definite integrals with explicit lower limits (\(t = 0\text{ s}, v = v_0, x = x_0\)) so initial values never vanish.
- **4. Sign Convention Flipping Mid-Problem:** Declare \(+y\) (up or down) and \(+x\) (right or left) at the top of your workspace. If \(+y\) is upward, gravitational acceleration stays \(a_y = -9.8\text{ m/s}^2\) from launch through impact.
- **5. Degree vs. Radian Calculator Trap:** Keep your graphing calculator in **Degree** mode for projectile launch angles (\(\sin 30^\circ\), \(\cos 30^\circ\)), and switch to **Radian** mode whenever evaluating calculus trigonometric derivatives or harmonic motion functions (\(\cos(\omega t)\)).
- **6. Assuming Total Speed is Zero at Maximum Height in 2D:** For an angled projectile, vertical velocity pauses momentarily at the apex (\(v_y = 0\text{ m/s}\)), but horizontal velocity remains completely unchanged (\(v_x = v_0\cos\theta \neq 0\)).
- **7. Plugging Numbers In Too Early:** College Board rubrics award points for symbolic algebraic derivations. Keep all variables in letters (\(v_0, g, \theta, b, m\)) until the target quantity is isolated on the left side, substituting numbers and SI units only on the final line.

  

  

  

**2. Common Student FAQ**

- **Q1: Should I use \(g = 9.8\text{ m/s}^2\), \(9.81\text{ m/s}^2\), or \(10\text{ m/s}^2\) on the AP exam?**

- Use **\(g = 9.8\text{ m/s}^2\)** (or \(9.81\text{ m/s}^2\)) on all AP Physics C Free-Response Questions unless the problem explicitly instructs you to use \(10\text{ m/s}^2\). Official College Board scoring rubrics accept numerical answers within a standard rounding tolerance around \(9.8\text{ m/s}^2\). _(For physical intuition only, \(9.8\text{ m/s}^2 \approx 32.2\text{ ft/s}^2\).)_

- **Q2: How do I know whether to integrate \(a(v)\) with respect to \(t\) or \(x\)?**

- Look directly at what the prompt asks you to find. If it asks for **velocity as a function of time \(v(t)\)**, set \(\frac{dv}{dt} = a(v)\) and separate \(v\) and \(t\). If it asks for **velocity as a function of position \(v(x)\)**, substitute \(v\frac{dv}{dx} = a(v)\) and separate \(v\) and \(x\).

- **Q3: Why does the integral of \(a(x)\,dx\) equal \(\frac{1}{2}\Delta(v^2)\) instead of \(\Delta v\)?**

- Because \(a(x)\) is integrated over **spatial displacement** rather than **elapsed time**. Multiplying both sides of \(\frac{1}{2}v^2 - \frac{1}{2}v_0^2 = \int_{x_0}^{x} a(x')\,dx'\) by mass \(m\) reveals the Work-Energy Theorem (\(W_{\text{net}} = \Delta K\)).

- **Q4: How many significant figures should I write in my final numerical answer?**

- Round all final numerical answers to **3 significant figures** (or match the fewest significant figures given in the problem statement) and always include proper SI units (\(\text{m}\), \(\text{m/s}\), \(\text{m/s}^{2}\), \(\text{s}\)).

  

  

  

  

Now that you have all **5 sections** pasted and formatted in Apple Pages, would you like a quick **pre-export checklist** to verify your **PDF settings, Lemon Squeezy upload, and live checkout overlay** before launching?

  

  

  

  

  

  

  

  

  

  

  

**Aaaaaaa**

**The Golden Rule of AP Physics C Kinematics**

Before touching a single formula, classify the acceleration.

- If acceleration is **constant** (a = const), use the Big Four algebraic equations.
- If acceleration **changes with time, velocity, or position** (a(t), a(v), or a(x)), the Big Four equations are **mathematically invalid**. You must use calculus.

  

**1. Differential Definitions (Always True):**

  

v(t) = 

  

**2. Integral Relationships (Always True):**

  

  

**3. Constant-Acceleration System (Only True When a is Constant):**

  

  

This document provides four graded, AP-style physics Free-Response Questions (FRQs) focusing on kinematics, calculus applications, and differential equations.

- **FRQ 1 (1D Variable Acceleration):** Integrates a time-dependent acceleration function   to find velocity and position functions, determine maximum velocity (  at  ), and calculate total distance ( ) over a   interval.
- **FRQ 2 (Velocity-Dependent Drag):** Uses separation of variables on a falling object with linear air resistance ( ) to derive the differential equation, terminal velocity  , time-dependent velocity  , and position  .
- **FRQ 3 (2D Projectile Motion):** Analyzes a launched research payload from a   cliff, solving for maximum height ( ), time of flight ( ), horizontal range ( ), and final impact speed ( ).
- **FRQ 4 (Position-Dependent Acceleration):** Applies the chain-rule identity   to a non-standard acceleration function  , finding the speed function  , maximum speed position ( ), turning point ( ), and explaining why   represents kinetic energy change per unit mass rather than velocity change.

  

  

  

  

  

  

  

  

  

  

  

  

Next up is the final module of your $49 Kinematics Mastery Vault: The Calculus Bridge (Pages 4–6) and the "Top 7 Score Killers" Checklist & FAQ (Pages 11–12). You already have the Cover, Executive Protocol, Hidden Clue Decoder Table, and all 4 Graded AP-Style FRQs completed.

  

**Honest Assessment: 9.5/10 Roadmap**

Most students fail AP Physics C: Mechanics not because they can't do calculus, but because they forget integration constants (+C) or use algebraic formulas when acceleration isn't constant. Adding the **Calculus Bridge** before the FRQs and closing with the **Top 7 Score Killers Checklist** ties the whole workbook together so a parent or student immediately sees why this is worth $49 instead of a free worksheet.

  

**What Remains to Complete Your Ebook**

- **Section 3 — The Calculus Bridge (Pages 4–6):**

- **What goes here:** A direct, step-by-step reference showing how to move between position x(t), velocity v(t), and acceleration a(t) using derivatives and definite integrals, plus the exact separation-of-variables templates for a(v) and a(x).
- **Why it matters:** Gives students a clean "lookup guide" right before they tackle your 4 FRQs.

- **Section 5 — The "Top 7 Score Killers" Checklist & Student FAQ (Pages 11–12):**

- **What goes here:** A 1-page pre-exam diagnostic checklist (covering sign conventions, radians vs. degrees, missing +C constants, and units) paired with a 4-question FAQ answering the most common student traps.
- **Why it matters:** Creates a high-value closing page that students will print out and keep on their desk while studying.

- **Final Assembly & Export in Apple Pages:**

- **What goes here:** Pasting the remaining sections into your Apple Pages template, adding a clean Table of Contents on Page 1, exporting as a flattened PDF, and uploading it into your Lemon Squeezy product file slot.

  

**Suggestions for Improvement**

- **Keep the Sequence Logical:** When you paste everything into Apple Pages, arrange the sections in this exact order: **Cover & Protocol (Pages 1–3)** **→** **The Calculus Bridge (Pages 4–6)** **→** **4 Graded FRQs & Solutions (Pages 7–10)** **→** **Top 7 Score Killers & FAQ (Pages 11–12)**.
- **Add a Quick Table of Contents:** Once all pages are pasted in Apple Pages, check the exact page numbers and put a clean 5-line Table of Contents on Page 1 so the PDF feels like a published manual.

  

Would you like me to write **Section 3 (The Calculus Bridge)** and **Section 5 (Top 7 Score Killers & FAQ)** in ready-to-paste Apple Pages format right now?

  

This guide covers essential calculus applications for AP Physics C: Mechanics, focusing on moving between position, velocity, and acceleration using derivatives and integrals when standard algebraic formulas fail. It also highlights the top seven common mistakes students make on kinematics problems—such as confusing displacement with total distance or misapplying initial conditions—along with a practical FAQ for exam preparation.

**No—that last message was just a brief summary, not the full copy-paste text you need for Apple Pages.** Let’s get you the complete, ready-to-paste **Section 3 (The Calculus Bridge)** and **Section 5 (Top 7 Score Killers & FAQ)** right now so you can drop them straight into your document.

  

**Honest Assessment: 9.5/10 Structure**

Putting **Section 3** right before your 4 FRQs gives students a clean mathematical playbook to reference while solving, and ending with **Section 5** gives them a high-value diagnostic checklist to print out before exam day. Remember to press **Option + Command + E** in Apple Pages to paste each single-block LaTeX equation cleanly.

  

  

  

**SECTION 3: THE CALCULUS BRIDGE (Pages 4–6)**

  

**1. When Algebraic Equations Are Illegal**

The "Big Four" kinematics equations only apply when acceleration is strictly constant (\(a = \text{const}\)). The moment acceleration depends on time \(a(t)\), velocity \(a(v)\), or position \(a(x)\), those algebraic formulas break down completely.

  

**2. The Differentiation & Integration Ladder**

Moving down the ladder (Position \(\rightarrow \) Velocity \(\rightarrow \) Acceleration) requires taking a derivative with respect to time. Moving up the ladder requires definite integration with initial boundary conditions.

- **Moving Down (Derivatives — Instantaneous Rates of Change):**

  

latex

v(t) = \frac{dx}{dt}, \qquad a(t) = \frac{dv}{dt} = \frac{d^2x}{dt^2}

Use code with caution.

  

- **Moving Up (Definite Integrals — Net Change Over Time):**

  

latex

v(t) = v_0 + \int_{0}^{t} a(t')\,dt', \qquad x(t) = x_0 + \int_{0}^{t} v(t')\,dt'

Use code with caution.

  

_(Imperial Intuition Note: A velocity of \(10\text{ m/s}\) equals roughly \(32.8\text{ ft/s}\) or \(22.4\text{ mph}\), and standard gravity \(g = 9.8\text{ m/s}^2 \approx 32.2\text{ ft/s}^2\).)_

  

**3. The Three Calculus Acceleration Templates**

Every non-constant acceleration problem on the AP Physics C exam falls into one of three mathematical structures. Match the problem's given function to the exact template below.

  

**Case A: Acceleration as a Function of Time, \(a(t)\)**

Integrate directly with respect to \(t\). Always apply initial conditions (\(v_{0}\) at \(t=0\) and \(x_{0}\) at \(t=0\)) rather than leaving an unsolved \(+C\).

  

latex

\int_{v_0}^{v} dv = \int_{0}^{t} a(t')\,dt' \quad \Longrightarrow \quad v(t) = v_0 + \int_{0}^{t} a(t')\,dt'

Use code with caution.

  

  

**Case B: Acceleration as a Function of Velocity, \(a(v)\)**

Common in air resistance and fluid drag problems (e.g., \(a(v) = g - bv\)). Separate the variables so all \(v\) terms are on the left and \(dt\) is on the right before integrating.

  

latex

\frac{dv}{dt} = a(v) \quad \Longrightarrow \quad \int_{v_0}^{v} \frac{dv'}{a(v')} = \int_{0}^{t} dt' = t

Use code with caution.

  

  

**Case C: Acceleration as a Function of Position, \(a(x)\)**

Common in spring systems, variable gravity, or force-vs-position graphs where time \(t\) is never mentioned. Use the chain rule to eliminate \(dt\) completely.

  

latex

a(x) = \frac{dv}{dt} = \frac{dv}{dx}\frac{dx}{dt} = v\frac{dv}{dx} \quad \Longrightarrow \quad \int_{v_0}^{v} v'\,dv' = \int_{x_0}^{x} a(x')\,dx'

Use code with caution.

  

Evaluating the left side gives the direct kinematic energy bridge:

  

latex

\frac{1}{2}v^2 - \frac{1}{2}v_0^2 = \int_{x_0}^{x} a(x')\,dx'

Use code with caution.

  

  

  

  

**SECTION 5: TOP 7 SCORE KILLERS & STUDENT FAQ (Pages 11–12)**

  

**Top 7 AP Physics C Kinematics Score Killers**

Review this checklist before turning in any Free-Response Question or taking a practice exam.

- **1. Using Big Four Equations on Variable Acceleration:** Applying \(\Delta x = v_0 t + \frac{1}{2}at^2\) when acceleration has a \(t\), \(v\), or \(x\) variable inside it earns zero physics points on the AP rubric.
- **2. Confusing Total Distance with Net Displacement:** Net displacement is \(\Delta x = \int_{t_1}^{t_2} v(t)\,dt\). Total distance traveled requires splitting the integral wherever \(v(t) = 0\) and taking absolute values:

  

latex

\text{Total Distance} = \int_{t_1}^{t_2} |v(t)|\,dt

Use code with caution.

  

- **3. Dropping Initial Conditions (\(v_{0}\) or \(x_{0}\)):** Indefinite integration leaves an arbitrary \(+C\). Always use definite integrals with lower limits (\(t=0, v=v_0, x=x_0\)) so initial values never vanish.
- **4. Sign Convention Flipping Mid-Problem:** Define \(+y\) (up or down) and \(+x\) (right or left) at the top of the page. If \(+y\) is upward, acceleration due to gravity must stay \(a_y = -9.8\text{ m/s}^2\) from launch to impact.
- **5. Degree vs. Radian Calculator Trap:** Keep your calculator in **Degree** mode for projectile launch angles (\(\sin 35^\circ\), \(\cos 35^\circ\)), and switch to **Radian** mode for calculus trigonometric derivatives or harmonic motion (\(\cos(\omega t)\)).
- **6. Assuming Speed is Zero at Maximum Height in 2D:** For an angled projectile, vertical velocity is zero at the peak (\(v_y = 0\text{ m/s}\)), but horizontal velocity remains constant (\(v_x = v_0\cos\theta \neq 0\)).
- **7. Plugging Numbers In Too Early:** AP rubrics award points for symbolic algebraic derivations. Keep variables in letters (\(v_0, g, \theta, b, m\)) until the very last line before substituting numbers and SI units.

  

**Common Student FAQ**

- **Q1: Should I use \(g = 9.8\text{ m/s}^2\), \(9.81\text{ m/s}^2\), or \(10\text{ m/s}^2\) on the AP exam?**

- Use **\(g = 9.8\text{ m/s}^2\)** (or \(9.81\text{ m/s}^2\)) on all AP Physics C Free-Response Questions unless the problem explicitly instructs you to use \(10\text{ m/s}^2\). College Board grading rubrics accept answers within a small rounding tolerance around \(9.8\text{ m/s}^2\).

- **Q2: How do I know whether to integrate \(a(v)\) with respect to \(t\) or \(x\)?**

- Look at what the question asks for. If it asks for **velocity as a function of time \(v(t)\)**, use \(\frac{dv}{dt} = a(v)\). If it asks for **velocity as a function of position \(v(x)\)**, substitute \(v\frac{dv}{dx} = a(v)\).

- **Q3: Why does the integral of \(a(x)\,dx\) equal \(\frac{1}{2}\Delta(v^2)\) instead of \(\Delta v\)?**

- Because \(a(x)\) is integrated over **distance** rather than **time**. Multiplying both sides by mass \(m\) reveals the Work-Energy Theorem (\(W = \Delta K\)).

- **Q4: How many significant figures should I write in my final numerical answer?**

- Round all final numerical answers to **3 significant figures** (or match the fewest significant figures given in the problem statement) and always include SI units (\(\text{m}\), \(\text{m/s}\), \(\text{m/s}^{2}\), \(\text{s}\)).

  

  

  

**Suggestions for Improvement**

- **Add a 5-Line Table of Contents on Page 1:** Once you paste **Section 1 & 2**, **Section 3**, **Section 4 (the 4 FRQs)**, and **Section 5** into Apple Pages, check the exact page numbers and add a clean Table of Contents box on Page 1 so the $49 Vault feels like a complete, published textbook module.
- **Export & Test:** Export as a **Best Quality PDF** (File > Export To > PDF...), double-check that every LaTeX block rendered crisply, and upload that single file into your Lemon Squeezy digital product slot.

  

Now that all five sections of your **$49 AP Physics C: Kinematics Mastery Vault** are written, would you like help creating a **clean Table of Contents + Sales Copy blurb** for your Lemon Squeezy product description page?

  

  

  

  

  

  

  

  

  

  

  

  

**Here is your clean Table of Contents (for Page 1 of your Apple Pages ebook) and high-converting Sales Copy (for your Lemon Squeezy product description page).**

  

**Honest Assessment: 9.5/10 Conversion Copy**

Parents and students buying a **$49** study guide want two things immediately: **clarity** (knowing exactly what pages and problems they are getting) and **confidence** (knowing it targets actual AP Physics C grading rubrics without gimmicks or fake score guarantees). This copy hits both directly while staying clean and scannable in Lemon Squeezy.

  

  

  

**Part 1: Table of Contents (Paste onto Page 1 of Your Apple Pages Ebook)**

_Adjust the exact page numbers on the right once all sections are pasted into your document._

  

**INSIDE THIS VAULT — TABLE OF CONTENTS**

- **Section 1: The Executive Protocol** — The 4-Step First-Principles Framework & SI Unit Standards _(Page 1)_
- **Section 2: Master Kinematics Flowchart & Hidden Clue Decoder** — Decision Tree & Word-Problem Translation Table _(Pages 2–3)_
- **Section 3: The Calculus Bridge** — Differentiation/Integration Ladder & Variable Acceleration Templates for \(a(t)\), \(a(v)\), and \(a(x)\) _(Pages 4–6)_
- **Section 4: 4 Graded AP-Style Free-Response Questions (FRQs)** — Full Calculus Derivations & Official-Style Scoring Rubrics _(Pages 7–10)_
- **Section 5: Top 7 Score Killers & Student FAQ** — Pre-Exam Diagnostic Checklist & Common Trap Answers _(Pages 11–12)_

  

  

  

**Part 2: Lemon Squeezy Product Description Copy (Paste into Lemon Squeezy)**

**Product Title:**

AP Physics C: Kinematics Mastery Vault (Calculus-Based Workbook & FRQ Solutions)

**Product Description (Copy-Paste Ready):**

  

**Stop guessing which kinematics formula to use—and learn the exact calculus-based protocol AP Physics C graders reward.**

Most high school students lose points in Unit 1 not because they cannot do algebra, but because they apply constant-acceleration formulas to variable-acceleration problems, drop initial boundary conditions (\(+C\)), or miss hidden constraints buried in word problems.

Built for **AP Physics C: Mechanics** students (and parents looking for serious, structured exam preparation), the Kinematics Mastery Vault is a 12-page, high-density digital workbook that bridges the gap between memorizing equations and solving calculus-based Free-Response Questions from first principles.

**What You Get Inside This 12-Page Digital Vault:**

- **The 4-Step Executive Problem-Solving Protocol:** A repeatable system for setting coordinate frames, classifying acceleration, isolating variables symbolically, and avoiding premature number-plugging.
- **The Hidden Clue Decoder Table:** Instant translations for classic AP exam phrasing (like _"starts from rest,"_ _"maximum height,"_ and _"returns to launch elevation"_) into exact mathematical boundary conditions.
- **The Calculus Bridge (\(a(t)\), \(a(v)\), and \(a(x)\)):** Step-by-step templates showing exactly when the "Big Four" equations are illegal—and how to use definite integrals, separation of variables for air drag, and the \(v\frac{dv}{dx}\) chain rule.
- **4 Graded AP-Style Free-Response Questions (FRQs):** Full, line-by-line calculus derivations and step-by-step solutions covering 1D variable acceleration, velocity-dependent drag, 2D projectile motion off a cliff, and position-dependent acceleration.
- **The Top 7 Score Killers Checklist & Student FAQ:** A printable pre-exam diagnostic sheet covering sign-convention flips, radian vs. degree calculator traps, and total distance vs. net displacement.

**Format & Instant Delivery:**

- **12-Page High-Resolution PDF** (Standard US Letter, 8.5 x 11 in / 215.9 x 279.4 mm — clean, crisp typography ready for iPad/tablet annotation or home printing).
- **Immediate Access:** Download your copy straight from the confirmation screen and your email receipt immediately after checkout.

_Created by Matthew Promise | Science Behind Things (_[sciencebehindthings.com](http://sciencebehindthings.com/)_)_

  

  

  

  

**Suggestions for Improvement**

- **Link Your Website Button to Lemon Squeezy:** Once you publish this product in Lemon Squeezy, click **Share** on your product dashboard, copy the **Checkout Link** (or Checkout Overlay embed code), and paste it into the **$49 Buy Button** on your sciencebehindthings.com sales page.
- **Keep Metric SI Primary in Your Preview Images:** When you take screenshots of Pages 2, 4, or 7 for your Lemon Squeezy product thumbnails, make sure your clean SI Metric equations (m/s, m/s²) are front and center so AP students immediately recognize the test-prep rigor.

  

Would you like help setting up your **Lemon Squeezy Checkout Link or Overlay code** inside your HTML sales page on **sciencebehindthings.com**, or walking through a **Test Mode purchase** to verify the whole funnel?

  

  

  

  

  

  

  

  

  

  

  

  

**To wire up your "Unlock Vault Access" button on** [sciencebehindthings.com](http://sciencebehindthings.com/) **with a seamless Lemon Squeezy pop-up overlay, add two pieces of code to your HTML file: the lemonsqueezy-button class on your anchor tag and the Lemon Squeezy script right before </body>.**

  

  

**Honest Assessment: 9.5/10 Setup & One Important Fix**

Using the **Checkout Overlay** keeps parents and students directly on your [sciencebehindthings.com](http://sciencebehindthings.com/) page instead of bouncing them to an external URL, which significantly boosts $49 conversion rates.

  

_Note on your live webpage copy:_ Your current page says **"10 Exam-Caliber AP Physics C Scenarios"**, whereas the ebook we just built has **4 Graded AP-Style FRQs**. Update that bullet on your HTML page to say **"4 Graded Exam-Caliber AP Physics C FRQs + Complete Calculus Bridge"** so your sales page matches your PDF 100% and avoids any refund disputes. [[1](http://sciencebehindthings.com/#:~:text=10%20Exam%2DCaliber%20AP%20Physics%20C,that%20separate%203s%20from%205s.)]

  

  

  

**Step 1: Get Your Exact Checkout URL from Lemon Squeezy**

1. Open your [Lemon Squeezy Dashboard](https://www.lemonsqueezy.com/) and go to **Store > Products**.
2. Click on your **AP Physics C: Kinematics Mastery Vault** product.
3. Click the **Share** button in the top-right corner (or copy the **Checkout Link**).
4. Copy the URL—it will look like https://lemonsqueezy.com.

  

  

  

  

**Step 2: Update Your "Unlock Vault Access" Button in HTML**

Find the Unlock Vault Access button in your index.html file and replace it with this exact HTML anchor snippet (pasting your real Checkout URL into href):

  

html

<a href="https://lemonsqueezy.com" class="lemonsqueezy-button btn-primary">

  Unlock Vault Access

</a>

Use code with caution.

  

- **Why ?embed=1 matters:** Appending ?embed=1 to the end of your Lemon Squeezy URL strips out the extra store header inside the pop-up modal so the checkout box looks clean and native on your page.
- **Keep your CSS styling:** Keep whatever button CSS class your site already uses (such as btn-primary or your existing button class) alongside lemonsqueezy-button so your button keeps its exact visual styling.

  

  

  

**Step 3: Paste the Lemon Squeezy Overlay Script Before </body>**

Scroll to the very bottom of your HTML file and paste this single <script> tag right above the closing </body> tag:

  

html

  <script src="https://lemonsqueezy.com" defer></script>

</body>

Use code with caution.

  

- **Fallback protection:** If a buyer has JavaScript disabled or opens the link in a new tab, the href still works normally and takes them straight to your hosted Lemon Squeezy checkout page.

  

  

  

**Step 4: Quick Content Alignment Check on Your Page**

Before pushing your updated HTML to GitHub Pages, make sure these two lines match your finished PDF:

- Change 10 Exam-Caliber AP Physics C Scenarios to 4 Graded Exam-Caliber AP Physics C FRQs + Variable-Acceleration Templates.
- Double-check that support@sciencebehindthings.com in your footer matches the support email saved in your Lemon Squeezy store settings. [[1](http://sciencebehindthings.com/#:~:text=10%20Exam%2DCaliber%20AP%20Physics%20C,that%20separate%203s%20from%205s.)]

  

Once you paste your **Checkout URL** into your HTML and push it to GitHub, would you like the quick steps to run a **$0 Test Mode checkout** on your live site to verify the pop-up overlay and PDF download?

  

  

  

  

  

  

  

  

  

  

  

  

**You can test your pop-up overlay, confirmation modal, and email receipt on** [sciencebehindthings.com](http://sciencebehindthings.com/) **in under 3 minutes using Lemon Squeezy’s Test Mode—with one important catch.**

  

  

**Honest Catch: Test Mode Disables File Downloads**

According to the [Lemon Squeezy Test Mode Documentation](https://docs.lemonsqueezy.com/help/getting-started/test-mode), **actual file downloads are disabled inside Test Mode**. Test Mode lets you verify that your button opens the pop-up overlay, processes a fake $49 payment, displays your custom Confirmation Modal, and sends a test receipt email. To verify the **actual PDF download**, you will use a 100%-off discount code after switching to Live Mode (covered in Step 4 below).

  

  

  

  

**Step 1: Turn On Test Mode & Publish Your Test Product**

- **Toggle Test Mode On:** In your Lemon Squeezy dashboard, look at the bottom-left sidebar and switch **Test Mode** on (an orange banner will appear at the top of your dashboard). [[1](https://docs.lemonsqueezy.com/help/getting-started/test-mode)]
- **Publish the Product:** Go to **Store > Products**, open your **Kinematics Mastery Vault** listing, and ensure its status is set to **Published** rather than Draft. [[1](https://docs.lemonsqueezy.com/help/getting-started/test-mode)]
- **Grab the Test Checkout URL:** Click **Share**, copy the Test Mode checkout link, and make sure that exact URL (with ?embed=1 at the end) is pasted into your Unlock Vault Access button on [sciencebehindthings.com](http://sciencebehindthings.com/).

  

  

**Step 2: Run the Checkout on Your Live Website**

1. Open [https://sciencebehindthings.com](https://sciencebehindthings.com/) in Safari (refresh the page so your latest GitHub Pages commit loads).
2. Click **Unlock Vault Access** and confirm that the Lemon Squeezy checkout pops up cleanly as an overlay on top of your site without redirecting away.
3. Enter your email address and fill in the payment box using Lemon Squeezy's official test card:

- **Card Number:** 4242 4242 4242 4242
- **Expiration Date:** Any future date (e.g., 12/30)
- **CVC:** Any 3 digits (e.g., 123)
- **ZIP / Postal Code:** Any valid 5-digit ZIP code (e.g., 90808) [[1](https://docs.lemonsqueezy.com/help/getting-started/test-mode), [2](https://refgrow.com/tools/lemonsqueezy-test-cards), [3](https://lemonsqueezy.nolt.io/401), [4](https://www.youtube.com/watch?v=dHo7lvpU6gs)]

1. Click **Pay $49.00**. [[1](https://www.youtube.com/watch?v=dHo7lvpU6gs)]

  

  

**Step 3: Verify the Pop-Up & Email Receipt**

- **Confirmation Modal:** Confirm that your custom title (_"Payment Confirmed! Your Kinematics Guide is Ready."_) and spam-folder message display cleanly right after payment.
- **Email Receipt:** Check your inbox for the test receipt and verify that your custom thank-you note and **Science Behind Things** branding appear properly. [[1](https://docs.lemonsqueezy.com/help/getting-started/test-mode)]

  

**Step 4: Copy to Live Mode & Test the Real PDF Download**

Products built in Test Mode do **not** automatically move over when you go live. [[1](https://docs.lemonsqueezy.com/help/getting-started/test-mode)]

- **Copy Your Product:** Open your test product in Lemon Squeezy, click the **... (More)** menu, and select **Copy to Live Mode**.
- **Verify Your PDF & Checkout Link:** Toggle **Test Mode OFF**, open your newly copied Live product, confirm your final PDF is attached, and **update the Checkout URL in your index.html** with the new Live Mode checkout link.
- **Test the Real Download for $0:** Go to **Store > Discounts** in Live Mode, create a temporary **100% off** code (e.g., TEST100), run one real $0 checkout on your site to verify the PDF downloads cleanly, and then delete the discount code. [[1](https://docs.lemonsqueezy.com/help/getting-started/test-mode)]

  

Are you ready to **copy your product to Live Mode** once your PDF is exported from Apple Pages, or do you want a quick check of your **final HTML code** before pushing it to GitHub?

  

  

  

  

  

  

  

  

  

  

  

  

**Your $49** AP Physics C: Kinematics Mastery Vault **is structured as a 12-page workbook divided into 5 distinct sections.** This layout balances conceptual rules, calculus derivations, graded exam practice, and pre-test diagnostics without overwhelming the student.

  

**Complete Section & Page Overview**

- **Section 1: Cover & The Executive Protocol (Page 1)**

- Includes the main title banner, the Table of Contents box, SI unit standards, and the 4-step first-principles problem-solving framework.

- **Section 2: Master Kinematics Flowchart & Hidden Clue Decoder (Pages 2–3)**

- Features the constant-vs.-variable acceleration decision tree, core equation sets, and the translation table for AP word-problem traps.

- **Section 3: The Calculus Bridge (Pages 4–6)**

- Covers the differentiation/integration ladder and provides step-by-step templates for \(a(t)\), \(a(v)\), and \(a(x)\) variable acceleration.

- **Section 4: 4 Graded AP-Style Free-Response Questions & Solutions (Pages 7–10)**

- Contains four complete calculus-based FRQs (1D variable acceleration, linear air drag, 2D cliff projectile, and position-dependent acceleration) with line-by-line derivations and point rubrics.

- **Section 5: Top 7 Score Killers & Student FAQ (Pages 11–12)**

- Closes with a printable pre-exam mistake checklist and a four-question FAQ addressing common student traps.

  

**Honest Layout Note: 9/10 Pacing**

When you paste all five sections into Apple Pages (set to US Letter, **8.5 x 11 in** / **215.9 x 279.4 mm**), your exact page count may land between **11 and 14 pages** depending on font size and equation block height. Insert manual **Page Breaks** (Insert > Page Break) at the start of each major section so no heading or rubric gets split awkwardly across two pages, then update the page numbers on Page 1 right before exporting to PDF.

  

Would you like tips on **formatting page breaks and equation alignment in Apple Pages**, or are you ready to export your PDF and go live on **Lemon Squeezy**?